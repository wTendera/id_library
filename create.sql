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


  CREATE TABLE publishers
  (
    publisher_id    serial        NOT NULL,
    publisher_name  varchar(100)  NOT NULL UNIQUE,
    creation_date   date,
    address         varchar(100)           UNIQUE,
    phone_num       varchar(100)           UNIQUE,
    
    CONSTRAINT pk_publishers
      PRIMARY KEY (publisher_id),

    CONSTRAINT ck_publishers
      CHECK (creation_date IS NULL OR creation_date<=current_date)

  );


  CREATE TABLE branches
  (
    branch_id    serial        NOT NULL,
    branch_name  varchar(100)  NOT NULL UNIQUE,
    address      varchar(100)  NOT NULL UNIQUE,
    phone_num    varchar(20)            UNIQUE,
    
    CONSTRAINT pk_branches
      PRIMARY KEY (branch_id)
  );





  CREATE TABLE books
  (
    book_id  serial        NOT NULL,
    title    varchar(100)  NOT NULL,
    
    CONSTRAINT pk_books
      PRIMARY KEY (book_id)
  );


  CREATE TABLE editions
  (
    edition_id     serial        NOT NULL,
    isbn           varchar(30)   NOT NULL UNIQUE,
    edition_name   varchar(100),
    release_date   date,
    book_id        integer       NOT NULL,
    publisher_id   integer,
    
    CONSTRAINT pk_editions
      PRIMARY KEY (edition_id),

    CONSTRAINT uk_editions
      UNIQUE (publisher_id,book_id,edition_name),

    CONSTRAINT fk_editions_books
      FOREIGN KEY (book_id)
        REFERENCES books,

    CONSTRAINT fk_editions_publishers
      FOREIGN KEY (publisher_id)
        REFERENCES publishers,

    CONSTRAINT ck_editions
      CHECK (release_date IS NULL OR release_date<=current_date)
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




  CREATE TABLE clients
  (
    client_id        serial        NOT NULL,
    client_name      varchar(100)  NOT NULL,
    document_number  varchar(50)   NOT NULL  UNIQUE,
    address          varchar(100)  NOT NULL,
    phone_num        varchar(50),
    signin_date      timestamp                         DEFAULT now(),
    
    CONSTRAINT pk_clients
      PRIMARY KEY (client_id),

    CONSTRAINT ck_clients
      CHECK (signin_date IS NULL OR signin_date<=now())
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


  CREATE TABLE borrows
  (
    borrow_id          serial     NOT NULL,
    client_id          integer    NOT NULL,
    specimen_id        integer    NOT NULL,
    borrow_date        timestamp  NOT NULL  DEFAULT now(),
    return_date        timestamp,
    return_final_date  timestamp  NOT NULL,
    
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

COMMIT;



BEGIN;
  CREATE OR REPLACE VIEW books_rating AS
    SELECT book_id,
           title,
           ROUND(avg(rating),2) AS rate
    FROM books
    LEFT JOIN ratings USING (book_id)
    GROUP BY book_id
    ORDER BY title;




  CREATE OR REPLACE VIEW titles_info AS
    SELECT books.title AS title,
           string_agg(DISTINCT author_name, ','||E'\n') AS authors,
           string_agg(DISTINCT category_name, ','||E'\n') AS categories,
           string_agg(DISTINCT publisher_name, ','||E'\n') AS publishers,
           string_agg(DISTINCT branch_name, ','||E'\n') AS branches,
           rate,
           COUNT(DISTINCT specimen_id) AS amount,
           COUNT(DISTINCT specimen_id) - COUNT(NULLIF(borrow_date IS NULL OR return_date IS NOT NULL, TRUE)) AS available 
    FROM books
    LEFT JOIN author_book USING (book_id)
    LEFT JOIN authors USING (author_id)
    LEFT JOIN book_category USING (book_id)
    LEFT JOIN categories USING (category_id)
    LEFT JOIN editions USING (book_id)
    LEFT JOIN publishers USING (publisher_id)
    LEFT JOIN specimens USING (edition_id)
    LEFT JOIN branches USING (branch_id)
    LEFT JOIN borrows USING (specimen_id)
    LEFT JOIN books_rating USING (book_id)
    GROUP BY book_id, rate
    ORDER BY title;

  CREATE OR REPLACE VIEW authors_info AS
    SELECT author_name AS name,
           birth_date AS birth,
           death_date AS death,
           string_agg(DISTINCT title, ';'||E'\n') AS books,
           string_agg(DISTINCT category_name, ','||E'\n') AS categories,
           COUNT(DISTINCT specimen_id) AS amount,
           COUNT(DISTINCT specimen_id) - COUNT(NULLIF(borrow_date IS NULL OR return_date IS NOT NULL, TRUE)) AS available 
    FROM authors
    LEFT JOIN author_book USING (author_id)
    LEFT JOIN books USING (book_id)
    LEFT JOIN book_category USING (book_id)
    LEFT JOIN categories USING (category_id)
    LEFT JOIN editions USING (book_id)
    LEFT JOIN publishers USING (publisher_id)
    LEFT JOIN specimens USING (edition_id)
    LEFT JOIN branches USING (branch_id)
    LEFT JOIN borrows USING (specimen_id)
    GROUP BY author_id
    ORDER BY author_name;



  CREATE OR REPLACE VIEW current_borrows AS
    SELECT client_name AS client,
           title AS title,
           specimen_id AS specimen,
           borrow_date AS borrowed,
           return_final_date AS deadline
    FROM clients
    INNER JOIN borrows USING (client_id)
    INNER JOIN specimens USING (specimen_id)
    INNER JOIN editions USING (edition_id)
    INNER JOIN books USING (book_id)
    WHERE return_date IS NULL
    ORDER BY return_final_date;

  CREATE OR REPLACE VIEW terminating_borrows AS
    SELECT *
    FROM current_borrows
    WHERE deadline BETWEEN now() AND now()  
    ORDER BY deadline;

  CREATE OR REPLACE VIEW terminated_borrows AS
    SELECT *
    FROM current_borrows
    WHERE deadline < now()  
    ORDER BY deadline;

  CREATE OR REPLACE VIEW clients_penalties AS
    SELECT client,
           SUM(EXTRACT(DAY FROM (now()-deadline))*2) || ' $' AS penalty
    FROM terminated_borrows
    GROUP BY client
    ORDER BY client;



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
      DELETE FROM editions WHERE publisher_id = OLD.publisher_id;
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
      len INTEGER;
      corisbn VARCHAR(15);
    
    BEGIN
    
      sum=0;
      corisbn = '';

      FOR i IN 1 .. char_length(NEW.isbn)
      LOOP
      	c = SUBSTRING(NEW.isbn FROM i FOR 1);
        IF c NOT BETWEEN '0' AND '9' AND c != '-' AND c!='X' AND c!=' ' THEN
        	RAISE EXCEPTION 'Incorrect sign used (digits, "X", "-" AND spaces allowed only)';
       	END IF;

       	IF c BETWEEN '0' AND '9' OR c = 'X' THEN
       	  corisbn = corisbn || c;
       	END IF;
      END LOOP;

      NEW.isbn = corisbn;

      
      CASE
        WHEN char_length(NEW.isbn) = 10 THEN
          FOR i IN 1 .. 9
          LOOP
            c = SUBSTRING(NEW.isbn FROM i FOR 1);
            x = c::integer;
            sum = sum + i*x;
          END LOOP;

          c = SUBSTRING(NEW.isbn FROM 10 FOR 1);

          IF (c='X' AND sum%11 != 10) OR (c!='X' AND c::integer != sum%11) THEN
            RAISE EXCEPTION 'Incorrect ISBN (checksum error)';
          END IF;

        WHEN char_length(NEW.isbn) = 13 THEN
          FOR i IN 1 .. 13
          LOOP
            c = SUBSTRING(NEW.isbn FROM i FOR 1);
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
          RAISE EXCEPTION 'Incorrect length';
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

  


  CREATE OR REPLACE FUNCTION borrow_check() RETURNS trigger AS $borrow_check$
    DECLARE
    BEGIN
      IF NEW.return_final_date IS NULL THEN
        NEW.return_final_date = NEW.borrow_date + interval '1 month';
      END IF;
      IF EXISTS (SELECT * FROM borrows WHERE specimen_id = NEW.specimen_id AND return_date IS NULL) THEN
        RAISE EXCEPTION 'Book is borrowed by somoene else';
      END IF;
      IF (SELECT COUNT(*) FROM borrows WHERE client_id = NEW.client_id AND return_date IS NULL) >=2 THEN
        RAISE EXCEPTION 'You have borrowed two books already';
      END IF;

      RETURN NEW;
    
    END
    $borrow_check$
    LANGUAGE plpgsql;

  CREATE TRIGGER borrow_check BEFORE INSERT OR UPDATE ON borrows
  FOR EACH ROW EXECUTE PROCEDURE borrow_check();
COMMIT;



BEGIN;

  CREATE OR REPLACE FUNCTION find_book_id(tit VARCHAR(100)) RETURNS INTEGER AS $$
    SELECT book_id FROM books WHERE tit = title ORDER BY book_id LIMIT 1;
    $$
    LANGUAGE sql;

  CREATE OR REPLACE FUNCTION find_category_id(name VARCHAR(100)) RETURNS INTEGER AS $$
    SELECT category_id FROM categories WHERE name = category_name ORDER BY category_id LIMIT 1;
    $$
    LANGUAGE sql;

  CREATE OR REPLACE FUNCTION find_author_id(name VARCHAR(100)) RETURNS INTEGER AS $$
    SELECT author_id FROM authors WHERE name = author_name ORDER BY author_id LIMIT 1;
    $$
    LANGUAGE sql;

  CREATE OR REPLACE FUNCTION find_edition_id(isb VARCHAR(30)) RETURNS INTEGER AS $$
    SELECT edition_id FROM editions WHERE isb = isbn ORDER BY edition_id LIMIT 1;
    $$
    LANGUAGE sql;

  CREATE OR REPLACE FUNCTION find_publisher_id(name VARCHAR(100)) RETURNS INTEGER AS $$
    SELECT publisher_id FROM publishers WHERE name = publisher_name ORDER BY publisher_id LIMIT 1;
    $$
    LANGUAGE sql;
  
  CREATE OR REPLACE FUNCTION find_branch_id(name VARCHAR(100)) RETURNS INTEGER AS $$
    SELECT branch_id FROM branches WHERE name = branch_name ORDER BY branch_id LIMIT 1;
    $$
    LANGUAGE sql;
  
  
  CREATE OR REPLACE FUNCTION add_new_category (cat VARCHAR(100),
                                              above VARCHAR(100) DEFAULT NULL) RETURNS INTEGER AS $$
    DECLARE
      a_id INTEGER;
      c_id INTEGER;
    BEGIN


      a_id = NULL;

      IF above IS NOT NULL THEN
        a_id = find_category_id(above);

        IF a_id IS NULL THEN
          a_id = nextval('categories_category_id_seq');
          INSERT INTO categories (category_id, category_name)
          VALUES (a_id, above);
        END IF;
      END IF;

      c_id = nextval('categories_category_id_seq');

      INSERT INTO categories(category_id, category_name, above_category)
      VALUES (c_id, cat, a_id);

      return c_id;

    END
    $$
    LANGUAGE plpgsql;



  CREATE OR REPLACE FUNCTION add_book (tit VARCHAR(100),
                                          auth VARCHAR(100)[] DEFAULT '{}',
                                          cat VARCHAR(100)[] DEFAULT '{}') RETURNS INTEGER AS $$
    DECLARE
      b_id INTEGER;
      a_id INTEGER;
      c_id INTEGER;
      i VARCHAR(100);
    BEGIN
      b_id = find_book_id(tit);

      IF b_id IS NULL THEN
        b_id = nextval('books_book_id_seq');
        INSERT INTO books(book_id, title)
        VALUES (b_id, tit);
      END IF;

      FOREACH i IN ARRAY auth
      LOOP
        a_id = find_author_id(i);

        IF a_id IS NULL THEN
          a_id = nextval('authors_author_id_seq');
          INSERT INTO authors(author_id, author_name)
          VALUES (a_id, i);
        END IF;

        IF NOT EXISTS (SELECT * FROM author_book WHERE author_id = a_id AND book_id=b_id) THEN
          INSERT INTO author_book(author_id, book_id)
          VALUES (a_id, b_id);
        END IF;
      END LOOP;

      FOREACH i IN ARRAY cat
      LOOP
        c_id = find_category_id(i);

        IF c_id IS NULL THEN
          c_id = nextval('categories_category_id_seq');
          INSERT INTO categories(category_id, category_name)
          VALUES (c_id, i);
        END IF;

        IF NOT EXISTS (SELECT * FROM book_category WHERE category_id = c_id AND book_id=b_id) THEN
          INSERT INTO book_category(book_id, category_id)
          VALUES (b_id, c_id);
        END IF;
      END LOOP;

      RETURN b_id;
    END
    $$
    LANGUAGE plpgsql;



  CREATE OR REPLACE FUNCTION add_new_edition  (tit VARCHAR(100),
                                              isb VARCHAR(30),
                                              edi VARCHAR(100),
                                              auth VARCHAR(100)[] DEFAULT '{}',
                                              cat VARCHAR(100)[] DEFAULT '{}',
                                              pub VARCHAR(100) DEFAULT NULL,
                                              rel date DEFAULT NULL) RETURNS INTEGER AS $$
    DECLARE
      e_id INTEGER;
      p_id INTEGER;
      c_id INTEGER;
      b_id INTEGER;
      i VARCHAR(100);
    BEGIN
      b_id = add_book(tit, auth, cat);

      e_id = find_edition_id(isb);

      IF e_id IS NULL AND edi IS NULL THEN
        RAISE EXCEPTION 'Edition does not exist and cannot be created without name';
      END IF; 

      p_id = find_publisher_id(pub);


      IF e_id IS NOT NULL THEN
        RAISE EXCEPTION 'Exists edition with the same ISBN. Please use UPDATE.';
      END IF;

      e_id = nextval('editions_edition_id_seq');


      IF p_id IS NULL AND pub IS NOT NULL THEN
        p_id = nextval('publishers_publisher_id_seq');
        INSERT INTO publishers(publisher_id, publisher_name)
        VALUES (p_id, pub);
      END IF;

      INSERT INTO editions(book_id, edition_id, isbn, edition_name, publisher_id, release_date)
      VALUES (b_id, e_id, isb, edi, p_id, rel);

      RETURN e_id;
    END
    $$
    LANGUAGE plpgsql;


  CREATE OR REPLACE FUNCTION add_new_specimen (tit VARCHAR(100),
                                              isb VARCHAR(30),
                                              br_id INTEGER,
                                              amo INTEGER DEFAULT 1,
                                              cov CHAR(4) DEFAULT NULL,
                                              auth VARCHAR(100)[] DEFAULT '{}',
                                              cat VARCHAR(100)[] DEFAULT '{}',
                                              edi VARCHAR(100) DEFAULT NULL,
                                              pub VARCHAR(100) DEFAULT NULL,
                                              rel date DEFAULT NULL) RETURNS VOID AS $$
    DECLARE
      e_id INTEGER;
      b_id INTEGER;
    BEGIN
      e_id = add_new_edition(tit, isb, edi, auth, cat, pub, rel);

      FOR i IN 1 .. amo
      LOOP
        INSERT INTO specimens(edition_id, branch_id, cover_type)
        VALUES (e_id, br_id, cov);
      END LOOP;

    END
    $$
    LANGUAGE plpgsql;

    CREATE OR REPLACE FUNCTION add_new_rating (cli INTEGER,
                                              tit VARCHAR(100),
                                              rat INTEGER) RETURNS VOID AS $$
    DECLARE
      b_id INTEGER;
    BEGIN
      b_id = find_book_id(tit);

      IF b_id IS NULL THEN
        RAISE EXCEPTION 'Book does not exists';
      END IF;

      INSERT INTO ratings(client_id, book_id, rating)
      VALUES (cli, b_id, rat);
    END
    $$
    LANGUAGE plpgsql;




    CREATE OR REPLACE FUNCTION add_new_borrow (cli INTEGER,
                                              tit VARCHAR(100),
                                              bra INTEGER,
                                              bor TIMESTAMP WITH TIME ZONE DEFAULT now(),
                                              ret TIMESTAMP WITH TIME ZONE DEFAULT NULL,
                                              isb VARCHAR(30) DEFAULT NULL,
                                              aut VARCHAR(100) DEFAULT NULL,
                                              edi VARCHAR(100) DEFAULT NULL,
                                              pub VARCHAR(100) DEFAULT NULL) RETURNS VOID AS $$
    DECLARE
      s_id INTEGER;
    BEGIN
      s_id =  (SELECT specimen_id 
              FROM specimens
              LEFT JOIN branches USING (branch_id)
              LEFT JOIN editions USING (edition_id)
              LEFT JOIN books USING (book_id)
              LEFT JOIN publishers USING (publisher_id)
              LEFT JOIN author_book USING (book_id)
              LEFT JOIN authors USING (author_id)
              LEFT JOIN borrows USING (specimen_id)
              WHERE tit = title
              AND bra = branch_id
              AND (isb IS NULL OR isb=isbn)
              AND (aut IS NULL OR aut=author_name)
              AND (edi IS NULL OR edi = edition_name)
              AND (pub IS NULL OR pub = publisher_name)
              AND (borrow_date IS NULL OR return_date IS NOT NULL)
              LIMIT 1)::integer;

      IF s_id IS NULL THEN
        RAISE EXCEPTION 'There is no book like this or everything is borrowed';
      END IF;

      INSERT INTO borrows(client_id, specimen_id, borrow_date, return_date)
      VALUES (cli, s_id, bor, ret);

    END
    $$
    LANGUAGE plpgsql;


COMMIT;