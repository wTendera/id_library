BEGIN;

  CREATE DATABASE library;
  \connect library

COMMIT;



BEGIN;

  CREATE TABLE authors
  (
    author_id    serial        NOT NULL,
    author_name  varchar(100)  NOT NULL,
    birth_date   date,
    death_date   date,
    phone_num    varchar(100),
    address      varchar(100),

    CONSTRAINT pk_authors
      PRIMARY KEY (author_id)
  );

  ALTER TABLE authors
    ADD CONSTRAINT ck_0
      CHECK (death_date>birth_date);



  CREATE TABLE books
  (
    book_id  serial        NOT NULL,
    title    varchar(100)  NOT NULL,
    
    CONSTRAINT pk_books
      PRIMARY KEY (book_id)
  );



  CREATE TABLE branches
  (
    branch_id    integer       NOT NULL,
    branch_name  varchar(100)  NOT NULL,
    address      varchar(100)  NOT NULL,
    phone_num    varchar(20),
    
    CONSTRAINT pk_branches
      PRIMARY KEY (branch_id)
  );



  CREATE TABLE categories
  (
    category_id     serial        NOT NULL,
    category_name   varchar(100)  NOT NULL,
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
    address          varchar(100)  NOT NULL,
    document_number  varchar(50)   NOT NULL,
    phone_num        varchar(50),
    signin_date      date          NOT NULL  DEFAULT current_date,
    
    CONSTRAINT pk_clients
      PRIMARY KEY (client_id)
  );



  CREATE TABLE publishers
  (
    publisher_id    serial        NOT NULL,
    publisher_name  varchar(100)  NOT NULL,
    phone_num       varchar(100),
    creation_date   date,
    address         varchar(100),
    
    CONSTRAINT pk_publishers
      PRIMARY KEY (publisher_id)
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
    book_id        integer       NOT NULL,
    publisher_id   integer,
    edition_name   varchar(100),
    release_date   date,
    isbn           varchar(15)   NOT NULL,
    book_language  varchar(20)   NOT NULL  DEFAULT 'polish',
    
    CONSTRAINT pk_editions
      PRIMARY KEY (edition_id),

    CONSTRAINT fk_editions_books
      FOREIGN KEY (book_id)
        REFERENCES books,

    CONSTRAINT fk_editions_publishers
      FOREIGN KEY (publisher_id)
        REFERENCES publishers
  );



  CREATE TABLE ratings
  (
    client_id  integer  NOT NULL,
    book_id    integer  NOT NULL,
    rating     integer  NOT NULL,

    CONSTRAINT pk_ratings
      PRIMARY KEY (client_id, book_id),

    CONSTRAINT fk_ratings_books
      FOREIGN KEY (book_id)
        REFERENCES books,

    CONSTRAINT fk_ratings_clients
      FOREIGN KEY (client_id)
        REFERENCES clients
  );



  CREATE TABLE specimens
  (
    specimen_id  serial       NOT NULL,
    edition_id   integer      NOT NULL,
    cover_type   varchar(10),
    branch_id    integer,
    
    CONSTRAINT pk_specimens
      PRIMARY KEY (specimen_id),
    
    CONSTRAINT fk_specimens_editions
      FOREIGN KEY (edition_id)
        REFERENCES editions,

    CONSTRAINT fk_specimens_branches
      FOREIGN KEY (branch_id)
        REFERENCES branches
  );

  ALTER TABLE specimens
    ADD CONSTRAINT ck_3
      CHECK (cover_type = 'hard' OR cover_type = 'soft');



  CREATE TABLE borrows
  (
    borrow_id          serial   NOT NULL,
    client_id          integer  NOT NULL,
    specimen_id        integer  NOT NULL,
    borrow_date        date     NOT NULL  DEFAULT current_date,
    return_date        date,
    return_final_date  date     NOT NULL,
    
    CONSTRAINT pk_borrows
      PRIMARY KEY (borrow_id),
    
    CONSTRAINT fk_borrows_specimens
      FOREIGN KEY (specimen_id)
        REFERENCES specimens,

    CONSTRAINT fk_borrows_clients
      FOREIGN KEY (client_id)
        REFERENCES clients
  );

  ALTER TABLE borrows
    ADD CONSTRAINT ck_1
      CHECK (borrow_date < return_final_date);

  ALTER TABLE borrows
    ADD CONSTRAINT ck_2
      CHECK ((borrow_date < return_date) OR return_date IS NULL);

COMMIT;




BEGIN;

  INSERT INTO books(title)
  VALUES
    ('Opowieści z Narnii: Lew, Czarownica i Stara Szafa'),
    ('Władca Pierścieni: Dwie Wieże'),
    ('Władca Pierścieni: Drużyna Pierścienia'),
    ('Władca Pierścieni: Powrót Króla'),
    ('Zbrodnia i Kara'),
    ('W Pustyni i w Puszczy'),
    ('Krzyżacy'),
    ('Potop'),
    ('Ogniem i Mieczem'),
    ('Pan Wołodyjowski'),
    ('Pan Tadeusz, czyli Ostatni Zajazd na Litwie'),
    ('Ten Obcy'),
    ('Krew Elfów'),
    ('Wieża Jaskółki'),
    ('Ostatnie Życzenie'),
    ('Pani Jeziora'),
    ('Miecz Przeznaczenia'),
    ('Czas Pogardy'),
    ('Chrzest Ognia'),
    ('Sezon Burz'),
    ('Seria Niefortunnych Zdarzeń'),
    ('Wstęp Do Algorytmów');

  INSERT INTO authors(author_name, birth_date, death_date, phone_num, address)
  VALUES
    ('J.K. Rowling', '1965-07-31', NULL, NULL, NULL),
    ('C.S. Lewis', NULL, NULL, NULL, NULL),
    ('J.R.R. Tolkien', '1892-01-03', '1973-08-02', NULL, NULL),
    ('Fyodor Dostoyevsky', NULL, NULL, NULL, NULL),
    ('Henryk Sienkiewicz', NULL, NULL, NULL, NULL),
    ('Andrzej Sapkowski', NULL, NULL, NULL, NULL),
    ('Adam Mickiewicz', NULL, NULL, NULL, NULL),
    ('Juliusz Słowacki', NULL, NULL, NULL, NULL),
    ('Irena Jurgielewiczowa', NULL, NULL, NULL, NULL),
    ('Lemony Snicket', NULL, NULL, NULL, NULL),
    ('Thomas H. Cormen', NULL, NULL, NULL, NULL),
    ('Charles E. Leiserson', NULL, NULL, NULL, NULL),
    ('Ronald L. Rivest', NULL, NULL, NULL, NULL),
    ('Clifford Stein', NULL, NULL, NULL, NULL);

  INSERT INTO author_book(author_id, book_id)
  VALUES
    (2,1),
    (3,2),
    (3,3),
    (3,4),
    (4,5),
    (5,6),
    (5,7),
    (5,8),
    (5,9),
    (6,13),
    (6,14),
    (6,15),
    (6,16),
    (6,17),
    (6,18),
    (6,19),
    (6,20),
    (10,21),
    (7,11),
    (9,12),
    (11,22),
    (12,22),
    (13,22),
    (14,22);


  INSERT INTO categories(category_name, above_category)
  VALUES
    ('Literatura piękna', NULL),
    ('Literatura popularnonaukowa', NULL),
    ('Literatura dziecięca', NULL),
    ('Inne', NULL),
      ('biografia/autobiografia/pamiętnik', 1),
      ('fantastyka, fantasy, science fiction', 1),
      ('historyczna', 1),
      ('horror', 1),
      ('klasyka', 1),
      ('literatura młodzieżowa', 1),
      ('literatura faktu', 1),
      ('literatura współczesna', 1),
      ('poezja', 1),
      ('przygodowa', 1),
      ('publicystyka literacka i eseje', 1),
      ('romans', 1),
      ('satyra', 1),
      ('thriller/sensacja/kryminał', 1),
      ('utwór dramatyczny (dramat, komedia, tragedia)', 1),
      ('psychologiczna', 1),
      ('astronomia, astrofizyka', 2),
      ('biznes, finanse', 2),
      ('encyklopedie i słowniki', 2),
      ('ezoteryka, senniki, horoskopy', 2),
      ('filozofia i etyka', 2),
      ('flora i fauna', 2),
      ('literatura podróżnicza', 2),
      ('informatyka i matematyka', 2),
      ('historia', 2),
      ('językoznawstwo, nauka o literaturze', 2),
      ('nauki przyrodnicze (fizyka, chemia, biologia, itd.)', 2),
      ('nauki społeczne (psychologia, socjologia, itd.)', 2),
      ('popularnonaukowa', 2),
      ('poradniki', 2),
      ('poradniki dla rodziców', 2),
      ('technika', 2),
      ('interaktywne, obrazkowe, edukacyjne', 3),
      ('opowieści dla młodszych dzieci', 3),
      ('bajki', 3),
      ('wierszyki, piosenki', 3),
      ('baśnie, legendy, podania', 3),
      ('historie biblijne', 3),
      ('opowiadania i powieści', 3),
      ('popularnonaukowe', 3),
      ('pozostałe', 3),
      ('albumy', 4),
      ('czasopisma', 4),
      ('film/kino/telewizja', 4),
      ('hobby', 4),
      ('komiksy', 4),
      ('kulinaria, przepisy kulinarne', 4),
      ('militaria, wojskowość', 4),
      ('motoryzacja', 4),
      ('muzyka', 4),
      ('religia', 4),
      ('rękodzieło', 4),
      ('rozrywka', 4),
      ('sport', 4),
      ('sztuka', 4),
      ('teatr', 4),
      ('turystyka, mapy, atlasy', 4),
      ('zdrowie, medycyna', 4);

  INSERT INTO book_category(book_id, category_id)
  VALUES
    (1,6), (1,14),
    (2,6), (2,14),
    (3,6), (3,14),
    (4,6), (4,14),
    (5,10), (5,14),
    (6,7), (6,14),
    (7,7), (7,9), (7,14),
    (8,7), (8,9), (8,14),
    (9,7), (9,9), (9,14),
    (10,7), (10,9), (10,14),
    (11,7), (11,9), (11,16),
    (12,10), (12,14), (12,16),
    (13,6), (13,12), (13,14), (13,16),
    (14,6), (14,12), (14,14), (14,16),
    (15,6), (15,12), (15,14), (15,16),
    (16,6), (16,12), (16,14), (16,16),
    (17,6), (17,12), (17,14), (17,16),
    (18,6), (18,12), (18,14), (18,16),
    (19,6), (19,12), (19,14), (19,16),
    (20,6), (20,12), (20,14), (20,16),
    (21,10), (21,14),
    (22, 28);

COMMIT;