DROP DATABASE IF EXISTS library;
CREATE DATABASE library;

BEGIN;
  \connect library

  CREATE TABLE authors
  (
    author_id    serial        NOT NULL,
    author_name  varchar(100)  NOT NULL,
    birth_date   date,
    death_date   date,
    
    CONSTRAINT pk_authors
      PRIMARY KEY (author_id),

    CONSTRAINT ck_authors
      CHECK (death_date>birth_date)
  );



  CREATE TABLE books
  (
    book_id  serial        NOT NULL,
    title    varchar(100)  NOT NULL,
    
    CONSTRAINT pk_books
      PRIMARY KEY (book_id)
  );



  CREATE TABLE branches
  (
    branch_id    serial        NOT NULL,
    branch_name  varchar(100)  NOT NULL UNIQUE,
    address      varchar(100)  NOT NULL UNIQUE,
    phone_num    varchar(20),
    
    CONSTRAINT pk_branches
      PRIMARY KEY (branch_id)
  );



  CREATE TABLE categories
  (
    category_id     serial        NOT NULL,
    category_name   varchar(100)  NOT NULL  UNIQUE,
    above_category  integer,
    
    CONSTRAINT pk_categories
      PRIMARY KEY (category_id),
    
    CONSTRAINT fk_categories_categories
      FOREIGN KEY (above_category)
        REFERENCES categories(category_id)
  );



  CREATE TABLE clients
  (
    client_id        serial        NOT NULL,
    client_name      varchar(100)  NOT NULL,
    document_number  varchar(50)   NOT NULL  UNIQUE,
    address          varchar(100)  NOT NULL,
    phone_num        varchar(50),
    signin_date      timestamp                    DEFAULT now(),
    
    CONSTRAINT pk_clients
      PRIMARY KEY (client_id),

    CONSTRAINT ck_clients
      CHECK (signin_date IS NULL OR signin_date<=now())
  );



  CREATE TABLE publishers
  (
    publisher_id    serial        NOT NULL,
    publisher_name  varchar(100)  NOT NULL UNIQUE,
    creation_date   date,
    address         varchar(100),
    phone_num       varchar(100),
    
    CONSTRAINT pk_publishers
      PRIMARY KEY (publisher_id),

    CONSTRAINT ck_publishers
      CHECK (creation_date IS NULL OR creation_date<=current_date)

  );



  CREATE TABLE author_book
  (
    author_id  integer  NOT NULL,
    book_id    integer  NOT NULL,
    
    CONSTRAINT idx_author_book
      PRIMARY KEY (author_id, book_id),
    
    CONSTRAINT fk_author_book_authors
      FOREIGN KEY (author_id)
        REFERENCES authors,
    
    CONSTRAINT fk_author_book_books
      FOREIGN KEY (book_id)
        REFERENCES books
  );



  CREATE TABLE book_category
  ( 
    book_id      integer  NOT NULL,
    category_id  integer  NOT NULL,

    CONSTRAINT pk_book_category
      PRIMARY KEY (book_id, category_id),
    
    CONSTRAINT fk_book_categories_books
      FOREIGN KEY (book_id)
        REFERENCES books,

    CONSTRAINT fk_book_category_categories
      FOREIGN KEY (category_id)
        REFERENCES categories
  );



  CREATE TABLE editions
  (
    edition_id     serial        NOT NULL,
    isbn           varchar(15)   NOT NULL UNIQUE,
    edition_name   varchar(100),
    release_date   date,
    book_id        integer       NOT NULL,
    publisher_id   integer,
    
    CONSTRAINT pk_editions
      PRIMARY KEY (edition_id),

    CONSTRAINT fk_editions_books
      FOREIGN KEY (book_id)
        REFERENCES books,

    CONSTRAINT fk_editions_publishers
      FOREIGN KEY (publisher_id)
        REFERENCES publishers,

    CONSTRAINT ck_editions
      CHECK (release_date IS NULL OR release_date<=current_date)
  );



  CREATE TABLE ratings
  (
    client_id    integer    NOT NULL,
    book_id      integer    NOT NULL,
    rating       integer    NOT NULL,
    rating_date  timestamp  NOT NULL  DEFAULT now(),

    CONSTRAINT pk_ratings
      PRIMARY KEY (client_id, book_id),

    CONSTRAINT fk_ratings_books
      FOREIGN KEY (book_id)
        REFERENCES books,

    CONSTRAINT fk_ratings_clients
      FOREIGN KEY (client_id)
        REFERENCES clients,

    CONSTRAINT ck_ratings_0
      CHECK (rating BETWEEN 1 AND 10),

    CONSTRAINT ck_ratings_1
      CHECK (rating_date IS NULL OR rating_date<=now())
  );



  CREATE TABLE specimens
  (
    specimen_id  serial       NOT NULL,
    edition_id   integer      NOT NULL,
    branch_id    integer      NOT NULL,
    cover_type   char(4),
    
    CONSTRAINT pk_specimens
      PRIMARY KEY (specimen_id),
    
    CONSTRAINT fk_specimens_editions
      FOREIGN KEY (edition_id)
        REFERENCES editions,

    CONSTRAINT fk_specimens_branches
      FOREIGN KEY (branch_id)
        REFERENCES branches,

    CONSTRAINT ck_specimens
      CHECK (cover_type = 'hard' OR cover_type = 'soft')
  );



  CREATE TABLE borrows
  (
    borrow_id          serial     NOT NULL,
    client_id          integer    NOT NULL,
    specimen_id        integer    NOT NULL,
    borrow_date        timestamp  NOT NULL  DEFAULT now(),
    return_date        timestamp,
    return_final_date  timestamp  NOT NULL  DEFAULT now() + interval '1 month',
    
    CONSTRAINT pk_borrows
      PRIMARY KEY (borrow_id),
    
    CONSTRAINT fk_borrows_specimens
      FOREIGN KEY (specimen_id)
        REFERENCES specimens,

    CONSTRAINT fk_borrows_clients
      FOREIGN KEY (client_id)
        REFERENCES clients,

    CONSTRAINT ck_borrows_0
      CHECK (borrow_date < return_final_date AND borrow_date<=now()),

    CONSTRAINT ck_borrows_1
      CHECK (return_date IS NULL OR (return_date<=now() AND borrow_date < return_date))
  );

COMMIT;



BEGIN;

  CREATE OR REPLACE FUNCTION authors_delete() RETURNS trigger AS $authors_delete$
    BEGIN
      DELETE FROM author_book WHERE author_id = OLD.author_id;
      RETURN OLD;
    END
    $authors_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER authors_delete BEFORE DELETE ON authors
  FOR EACH ROW EXECUTE PROCEDURE authors_delete();




  CREATE OR REPLACE FUNCTION categories_delete() RETURNS trigger AS $categories_delete$
    BEGIN
      DELETE FROM book_category WHERE category_id = OLD.category_id;
      RETURN OLD;
    END
    $categories_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER categories_delete BEFORE DELETE ON categories
  FOR EACH ROW EXECUTE PROCEDURE categories_delete();



  CREATE OR REPLACE FUNCTION publishers_delete() RETURNS trigger AS $publishers_delete$
    BEGIN
      UPDATE editions
        SET publisher_id = NULL
        WHERE publisher_id = OLD.publisher_id;
      RETURN OLD;
    END
    $publishers_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER publishers_delete BEFORE DELETE ON publishers
  FOR EACH ROW EXECUTE PROCEDURE publishers_delete();



  CREATE OR REPLACE FUNCTION branches_delete() RETURNS trigger AS $branches_delete$
    BEGIN
      DELETE FROM specimens WHERE branch_id = OLD.branch_id;
      RETURN OLD;
    END
    $branches_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER branches_delete BEFORE DELETE ON branches
  FOR EACH ROW EXECUTE PROCEDURE branches_delete();


  CREATE OR REPLACE FUNCTION specimens_delete() RETURNS trigger AS $specimens_delete$
    BEGIN
      DELETE FROM borrows WHERE specimen_id = OLD.specimen_id;
      RETURN OLD;
    END
    $specimens_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER specimens_delete BEFORE DELETE ON specimens
  FOR EACH ROW EXECUTE PROCEDURE specimens_delete();



  CREATE OR REPLACE FUNCTION editions_delete() RETURNS trigger AS $editions_delete$
    BEGIN
      DELETE FROM specimens WHERE edition_id = OLD.edition_id;
      RETURN OLD;
    END
    $editions_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER editions_delete BEFORE DELETE ON editions
  FOR EACH ROW EXECUTE PROCEDURE editions_delete();



  CREATE OR REPLACE FUNCTION books_delete() RETURNS trigger AS $books_delete$
    BEGIN
      DELETE FROM author_book WHERE book_id = OLD.book_id;
      DELETE FROM book_category WHERE book_id = OLD.book_id;
      DELETE FROM editions WHERE book_id = OLD.book_id;
      DELETE FROM ratings WHERE book_id = OLD.book_id;
      RETURN OLD;
    END
    $books_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER books_delete BEFORE DELETE ON books
  FOR EACH ROW EXECUTE PROCEDURE books_delete();



  CREATE OR REPLACE FUNCTION clients_delete() RETURNS trigger AS $clients_delete$
    BEGIN
      DELETE FROM ratings WHERE client_id = OLD.client_id;
      DELETE FROM borrows WHERE client_id = OLD.client_id;
      RETURN OLD;
    END
    $clients_delete$
    LANGUAGE plpgsql;

  CREATE TRIGGER clients_delete BEFORE DELETE ON clients
  FOR EACH ROW EXECUTE PROCEDURE clients_delete();



  CREATE OR REPLACE FUNCTION isbn_check() RETURNS trigger AS $isbn_check$
    DECLARE
      sum NUMERIC;
      c CHAR;
      x NUMERIC;
    
    BEGIN
    
      sum=0;
      
      CASE
        WHEN char_length(NEW.isbn) = 10 THEN
          FOR i IN 1 .. 9
          LOOP
            c = SUBSTRING(NEW.isbn FROM i FOR 1);
    
            IF c NOT BETWEEN '0' AND '9' THEN
              RAISE EXCEPTION 'Incorrect sign used (digits and X allowed only)';
            END IF;
    
            x = c::integer;
            sum = sum + i*x;
          END LOOP;

          c = SUBSTRING(NEW.isbn FROM 10 FOR 1);

          IF (c NOT BETWEEN '0' AND '9' AND c!='X') THEN
            RAISE EXCEPTION 'Incorrect sign used (digits and X allowed only)';
          END IF;

          IF (c='X' AND sum%11 != 10) OR (c!='X' AND c::integer != sum%11) THEN
            RAISE EXCEPTION 'Incorrect ISBN (checksum error)';
          END IF;

        WHEN char_length(NEW.isbn) = 13 THEN
          FOR i IN 1 .. 13
          LOOP
            c = SUBSTRING(NEW.isbn FROM i FOR 1);

            IF c NOT BETWEEN '0' AND '9' THEN
              RAISE EXCEPTION 'Incorrect signed used (digits and X allowed only)';
            END IF;

            x = CAST (c AS INTEGER);

            IF i=13 THEN
              EXIT;
            END IF;

            CASE
              WHEN i%2 = 1 THEN
                sum = sum + x*1;
              ELSE
                sum = sum + x*3;
            END CASE;
          END LOOP;

          IF (10-(sum%10))%10 != x THEN
            RAISE EXCEPTION 'Incorrect ISBN (checksum error)';
          END IF;
        
        ELSE
          RAISE EXCEPTION 'Incorrect length or incorrect sign used (digits and X allowed only)';
      END CASE;


      RETURN NEW;
    
    END
    $isbn_check$
    LANGUAGE plpgsql;

  CREATE TRIGGER isbn_check BEFORE INSERT OR UPDATE ON editions
  FOR EACH ROW EXECUTE PROCEDURE isbn_check();



  CREATE OR REPLACE FUNCTION rating_check() RETURNS trigger AS $rating_check$
    DECLARE
    BEGIN
      IF NOT EXISTS ( SELECT book_id, client_id, return_date
                      FROM borrows
                        JOIN specimens USING (specimen_id)
                        JOIN editions USING (edition_id)
                        JOIN books USING (book_id)
                      WHERE book_id = NEW.book_id
                        AND client_id = NEW.client_id
                        AND return_date IS NOT NULL
                        AND return_date >= now()- interval '6 months' ) THEN
        RAISE EXCEPTION 'This client is not allowed to rate this book';
      END IF;

      RETURN NEW;
    
    END
    $rating_check$
    LANGUAGE plpgsql;

  CREATE TRIGGER rating_check BEFORE INSERT OR UPDATE ON ratings
  FOR EACH ROW EXECUTE PROCEDURE rating_check();



  CREATE OR REPLACE FUNCTION phone_check() RETURNS trigger AS $phone_check$
    DECLARE
      c char;
      i integer;
    BEGIN
      IF NEW.phone_num IS NOT NULL THEN
        FOR i IN 1 .. char_length(NEW.phone_num)
        LOOP
          c = SUBSTRING(NEW.phone_num FROM i FOR 1);
          IF c NOT BETWEEN '0' AND '9' AND c!='+' AND c!='-' AND c!=' ' THEN
            RAISE EXCEPTION 'Incorrect phone number';
          END IF;
        END LOOP;
      END IF;
        
      RETURN NEW;
    
    END
    $phone_check$
    LANGUAGE plpgsql;

  CREATE TRIGGER phone_check BEFORE INSERT OR UPDATE ON branches
  FOR EACH ROW EXECUTE PROCEDURE phone_check();

  CREATE TRIGGER phone_check BEFORE INSERT OR UPDATE ON clients
  FOR EACH ROW EXECUTE PROCEDURE phone_check();

  CREATE TRIGGER phone_check BEFORE INSERT OR UPDATE ON publishers
  FOR EACH ROW EXECUTE PROCEDURE phone_check();

COMMIT;



BEGIN;

  CREATE OR REPLACE FUNCTION add_new_book (tit VARCHAR(100),
                                          auth VARCHAR(100)[] DEFAULT '{}',
                                          cat VARCHAR(100)[] DEFAULT '{}') RETURNS VOID AS $$
    DECLARE
      b_id INTEGER;
      a_id INTEGER;
      c_id INTEGER;
      i VARCHAR(100);
    BEGIN
      b_id = nextval('books_book_id_seq');

      INSERT INTO books(book_id, title)
      VALUES (b_id, tit);

      FOREACH i IN ARRAY auth
      LOOP
        a_id = (SELECT author_id FROM authors WHERE i = author_name ORDER BY 1 LIMIT 1)::INTEGER;

        IF a_id IS NULL THEN
          a_id = nextval('authors_author_id_seq');
          INSERT INTO authors(author_id, author_name)
          VALUES (a_id, i);
        END IF;

        INSERT INTO author_book(author_id, book_id)
        VALUES (a_id, b_id);
      END LOOP;

      FOREACH i IN ARRAY cat
      LOOP
        c_id = (SELECT category_id FROM categories WHERE i = category_name ORDER BY 1 LIMIT 1)::INTEGER;

        IF c_id IS NULL THEN
          c_id = nextval('categories_category_id_seq');
          INSERT INTO categories(category_id, category_name)
          VALUES (c_id, i);
        END IF;

        INSERT INTO book_category(book_id, category_id)
        VALUES (b_id, c_id);
      END LOOP;
    END
    $$
    LANGUAGE plpgsql;

  CREATE OR REPLACE FUNCTION add_new_category (cat VARCHAR(100),
                                              above VARCHAR(100) DEFAULT NULL) RETURNS VOID AS $$
    DECLARE
      a_id INTEGER;

    BEGIN

      a_id = NULL;

      IF above IS NOT NULL THEN
        a_id = (SELECT category_id FROM categories WHERE above = category_name ORDER BY 1 LIMIT 1)::INTEGER;
        
        IF a_id IS NULL THEN
          a_id = nextval('categories_category_id_seq');
          INSERT INTO categories (category_id, category_name)
          VALUES (a_id, above);
        END IF;
      END IF;

      INSERT INTO categories(category_name, above_category)
      VALUES (cat, a_id);

    END
    $$
    LANGUAGE plpgsql;

COMMIT;