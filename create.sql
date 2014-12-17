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
    signin_date      date                    DEFAULT current_date,
    
    CONSTRAINT pk_clients
      PRIMARY KEY (client_id),

    CONSTRAINT ck_clients
      CHECK (signin_date IS NULL OR signin_date<=current_date)
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
    isbn           numeric(13)   NOT NULL UNIQUE,
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
    client_id    integer  NOT NULL,
    book_id      integer  NOT NULL,
    rating       integer  NOT NULL,
    rating_date  date     NOT NULL  DEFAULT current_date,

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
      CHECK (rating_date IS NULL OR rating_date<=current_date)
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
        REFERENCES clients,

    CONSTRAINT ck_borrows_0
      CHECK (borrow_date < return_final_date AND borrow_date<=current_date),

    CONSTRAINT ck_borrows_1
      CHECK (return_date IS NULL OR (return_date<=current_date AND borrow_date < return_date))
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



BEGIN;
  \connect library

  SELECT add_new_category('Biografia/autobiografia/pamiętnik', 'Literatura piękna');
  SELECT add_new_category('Fantastyka, fantasy, science fiction', 'Literatura piękna');
  SELECT add_new_category('Historyczna', 'Literatura piękna');
  SELECT add_new_category('Horror', 'Literatura piękna');
  SELECT add_new_category('Klasyka', 'Literatura piękna');
  SELECT add_new_category('Literatura młodzieżowa', 'Literatura piękna');
  SELECT add_new_category('Literatura faktu', 'Literatura piękna');
  SELECT add_new_category('Literatura współczesna', 'Literatura piękna');
  SELECT add_new_category('Poezja', 'Literatura piękna');
  SELECT add_new_category('Przygodowa', 'Literatura piękna');
  SELECT add_new_category('Publicystyka literacka i eseje', 'Literatura piękna');
  SELECT add_new_category('Romans', 'Literatura piękna');
  SELECT add_new_category('Satyra', 'Literatura piękna');
  SELECT add_new_category('Thriller/sensacja/kryminał', 'Literatura piękna');
  SELECT add_new_category('Utwór dramatyczny (dramat, komedia, tragedia)', 'Literatura piękna');
  SELECT add_new_category('Psychologiczna', 'Literatura piękna');
  SELECT add_new_category('Astronomia, astrofizyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Biznes, finanse', 'Literatura popularnonaukowa');
  SELECT add_new_category('Encyklopedie i słowniki', 'Literatura popularnonaukowa');
  SELECT add_new_category('Ezoteryka, senniki, horoskopy', 'Literatura popularnonaukowa');
  SELECT add_new_category('Filozofia i etyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Flora i fauna', 'Literatura popularnonaukowa');
  SELECT add_new_category('Literatura podróżnicza', 'Literatura popularnonaukowa');
  SELECT add_new_category('Informatyka i matematyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Historia', 'Literatura popularnonaukowa');
  SELECT add_new_category('Językoznawstwo, nauka o literaturze', 'Literatura popularnonaukowa');
  SELECT add_new_category('Nauki przyrodnicze (fizyka, chemia, biologia, itd.)', 'Literatura popularnonaukowa');
  SELECT add_new_category('Nauki społeczne (psychologia, socjologia, itd.)', 'Literatura popularnonaukowa');
  SELECT add_new_category('Popularnonaukowa', 'Literatura popularnonaukowa');
  SELECT add_new_category('Poradniki', 'Literatura popularnonaukowa');
  SELECT add_new_category('Poradniki dla rodziców', 'Literatura popularnonaukowa');
  SELECT add_new_category('Technika', 'Literatura popularnonaukowa');
  SELECT add_new_category('Interaktywne, obrazkowe, edukacyjne', 'Literatura dziecięca');
  SELECT add_new_category('Opowieści dla młodszych dzieci', 'Literatura dziecięca');
  SELECT add_new_category('Bajki', 'Literatura dziecięca');
  SELECT add_new_category('Wierszyki, piosenki', 'Literatura dziecięca');
  SELECT add_new_category('Baśnie, legendy, podania', 'Literatura dziecięca');
  SELECT add_new_category('Historie biblijne', 'Literatura dziecięca');
  SELECT add_new_category('Opowiadania i powieści', 'Literatura dziecięca');
  SELECT add_new_category('Popularnonaukowe', 'Literatura dziecięca');
  SELECT add_new_category('Pozostałe', 'Literatura dziecięca');
  SELECT add_new_category('Albumy', 'Inne');
  SELECT add_new_category('Czasopisma', 'Inne');
  SELECT add_new_category('Film/kino/telewizja', 'Inne');
  SELECT add_new_category('Hobby', 'Inne');
  SELECT add_new_category('Komiksy', 'Inne');
  SELECT add_new_category('Kulinaria, przepisy kulinarne', 'Inne');
  SELECT add_new_category('Militaria, wojskowość', 'Inne');
  SELECT add_new_category('Motoryzacja', 'Inne');
  SELECT add_new_category('Muzyka', 'Inne');
  SELECT add_new_category('Religia', 'Inne');
  SELECT add_new_category('Rękodzieło', 'Inne');
  SELECT add_new_category('Rozrywka', 'Inne');
  SELECT add_new_category('Sport', 'Inne');
  SELECT add_new_category('Sztuka', 'Inne');
  SELECT add_new_category('Teatr', 'Inne');
  SELECT add_new_category('Turystyka, mapy, atlasy', 'Inne');
  SELECT add_new_category('Zdrowie, medycyna', 'Inne');



  SELECT add_new_book('Duma i uprzedzenie', '{Jane Austen}');
  SELECT add_new_book('Władca Pierścieni - Drużyna Pierścienia', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}');
  SELECT add_new_book('Władca Pierścieni - Dwie Wieże', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}');
  SELECT add_new_book('Władca Pierścieni - Powrót Krola', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}');
  SELECT add_new_book('Jane Eyre', '{Charlotte Bronte}');
  SELECT add_new_book('Harry Potter i Kamień Filozoficzny', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Komnata Tajemnic', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Więzień Azkabanu', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Czara Ognia', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Zakon Feniksa', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Książe Półkrwi', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Insygnia Śmierci', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Zabić drozda', '{Harper Lee}');
  SELECT add_new_book('Biblia');
  SELECT add_new_book('Wichrowe Wzgórza', '{Emily Bronte}');
  SELECT add_new_book('Rok 1984', '{George Orwell}');
  SELECT add_new_book('Mroczne materie', '{Philip Pullman}');
  SELECT add_new_book('Wielkie nadzieje', '{Charles Dickens}');
  SELECT add_new_book('Małe kobietki', '{Louisa M Alcott}');
  SELECT add_new_book('Tessa D’Urberville', '{Thomas Hardy}');
  SELECT add_new_book('Paragraf 22', '{Joseph Heller}');
  SELECT add_new_book('Dzieła zebrane Szekspira');
  SELECT add_new_book('Rebeka', '{Daphne Du Maurier}');
  SELECT add_new_book('Hobbit', '{J.R.R. Tolkien}');
  SELECT add_new_book('Birdsong', '{Sebastian Faulks}');
  SELECT add_new_book('Buszujący w zbożu', '{J.D. Salinger}');
  SELECT add_new_book('Żona podróżnika w czasie', '{Audrey Niffenegger}');
  SELECT add_new_book('Miasteczko Middlemarch', '{George Eliot}');
  SELECT add_new_book('Przeminęło z wiatrem', '{Margaret Mitchell}');
  SELECT add_new_book('Wielki Gatsby', '{Scott Fitzgerald}');
  SELECT add_new_book('Samotnia', '{Charles Dickens}');
  SELECT add_new_book('Wojna i pokój', '{Lew Tołstoj}');
  SELECT add_new_book('Autostopem przez Galaktykę', '{Douglas Adams}');
  SELECT add_new_book('Znowu w Brideshead', '{Evelyn Waugh}');
  SELECT add_new_book('Zbrodnia i kara', '{Fiodor Dostojewski}');
  SELECT add_new_book('Grona gniewu', '{John Steinbeck}');
  SELECT add_new_book('Alicja w Krainie Czarów', '{Lewis Carroll}');
  SELECT add_new_book('O czym szumią wierzby', '{Kenneth Grahame}');
  SELECT add_new_book('Anna Karenina', '{Lew Tołstoj}');
  SELECT add_new_book('David Copperfield', '{Charles Dickens}');
  SELECT add_new_book('Opowieści z Narnii', '{C.S. Lewis}');
  SELECT add_new_book('Emma', '{Jane Austen}');
  SELECT add_new_book('Perswazje', '{Jane Austen}');
  SELECT add_new_book('Chłopiec z latawcem', '{Khaled Hosseini}');
  SELECT add_new_book('Kapitan Corelli (w innym tłumaczeniu: Mandolina kapitana Corellego)', '{Louis De Bernieres}');
  SELECT add_new_book('Wyznania Gejszy', '{Arthur Golden}');
  SELECT add_new_book('Kubuś Puchatek', '{A.A. Milne}');
  SELECT add_new_book('Folwark zwierzęcy', '{George Orwell}');
  SELECT add_new_book('Kod Da Vinci', '{Dan Brown}');
  SELECT add_new_book('Sto lat samotności', '{Gabriel Garcia Marquez}');
  SELECT add_new_book('Modlitwa za Owena', '{John Irving}');
  SELECT add_new_book('Kobieta w bieli', '{Wilkie Collins}');
  SELECT add_new_book('Ania z Zielonego Wzgórza', '{L.M. Montgomery}');
  SELECT add_new_book('Z dala od zgiełku', '{Thomas Hardy}');
  SELECT add_new_book('Opowieść podręcznej', '{Margaret Atwood}');
  SELECT add_new_book('Władca much', '{William Golding}');
  SELECT add_new_book('Pokuta', '{Ian McEwan}');
  SELECT add_new_book('Życie Pi', '{Yann Martel}');
  SELECT add_new_book('Diuna', '{Frank Herbert}');
  SELECT add_new_book('Cold Comfort Farm', '{Stella Gibbons}');
  SELECT add_new_book('Rozważna i romantyczna', '{Jane Austen}');
  SELECT add_new_book('Pretendent do ręki', '{Vikram Seth}');
  SELECT add_new_book('Cień wiatru', '{Carlos Ruiz Zafon}');
  SELECT add_new_book('Opowieść o dwóch miastach', '{Charles Dickens}');
  SELECT add_new_book('Nowy wspaniały świat', '{Aldous Huxley}');
  SELECT add_new_book('Dziwny przypadek psa nocną porą', '{Mark Haddon}');
  SELECT add_new_book('Miłość w czasach zarazy', '{Gabriel Garcia Marquez}');
  SELECT add_new_book('Myszy i ludzie', '{John Steinbeck}');
  SELECT add_new_book('Lolita', '{Vladimir Nabokov}');
  SELECT add_new_book('Tajemna historia', '{Donna Tartt}');
  SELECT add_new_book('Nostalgia anioła', '{Alice Sebold}');
  SELECT add_new_book('Hrabia Monte Christo', '{Alexandre Dumas}');
  SELECT add_new_book('W drodze', '{Jack Kerouac}');
  SELECT add_new_book('Juda nieznany', '{Thomas Hardy}');
  SELECT add_new_book('Dziennik Bridget Jones', '{Helen Fielding}');
  SELECT add_new_book('Dzieci północy', '{Salman Rushdie}');
  SELECT add_new_book('Moby Dick', '{Herman Melville}');
  SELECT add_new_book('Oliver Twist', '{Charles Dickens}');
  SELECT add_new_book('Dracula', '{Bram Stoker}');
  SELECT add_new_book('Tajemniczy ogród', '{Frances Hodgson Burnett}');
  SELECT add_new_book('Zapiski z małej wyspy', '{Bill Bryson}');
  SELECT add_new_book('Ulisses', '{James Joyce}');
  SELECT add_new_book('Szklany klosz', '{Sylvia Plath}');
  SELECT add_new_book('Jaskółki i Amazonki', '{Arthur Ransome}');
  SELECT add_new_book('Germinal', '{Emile Zola}');
  SELECT add_new_book('Targowisko próżności', '{William Makepeace Thackeray}');
  SELECT add_new_book('Opętanie', '{A.S. Byatt}');
  SELECT add_new_book('Opowieść wigilijna', '{Charles Dickens}');
  SELECT add_new_book('Atlas chmur', '{David Mitchell}');
  SELECT add_new_book('Kolor purpury', '{Alice Walker}');
  SELECT add_new_book('Okruchy dnia', '{Kazuo Ishiguro}');
  SELECT add_new_book('Pani Bovary', '{Gustave Flaubert}');
  SELECT add_new_book('A Fine Balance', '{Rohinton Mistry}');
  SELECT add_new_book('Pajęczyna Szarloty', '{E.B. White}');
  SELECT add_new_book('Pięć osób, które spotykamy w niebie', '{Mitch Albom}');
  SELECT add_new_book('Przygody Sherlocka Holmesa', '{Sir Arthur Conan Doyle}');
  SELECT add_new_book('The Faraway Tree Collection', '{Enid Blyton}');
  SELECT add_new_book('Jądro ciemności', '{Joseph Conrad}');
  SELECT add_new_book('Mały Książę', '{Antoine De Saint-Exupery}');
  SELECT add_new_book('Fabryka os', '{Iain Banks}');
  SELECT add_new_book('Wodnikowe Wzgórze', '{Richard Adams}');
  SELECT add_new_book('Sprzysiężenie głupców', '{John Kennedy Toole}');
  SELECT add_new_book('Miasteczko jak Alece Springs', '{Nevil Shute}');
  SELECT add_new_book('Trzej muszkieterowie', '{Alexandre Dumas}');
  SELECT add_new_book('Hamlet', '{William Shakespeare}');
  SELECT add_new_book('Charlie i fabryka czekolady', '{Roald Dahl}');
  SELECT add_new_book('Nędznicy', '{Victor Hugo}');
  SELECT add_new_book('W pustyni i w puszczy', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Krzyżacy', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Potop', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Ogniem i mieczem', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Pan Wołodyjowski', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Pan Tadeusz, czyli ostatni zajazd na Litwie', '{Adam Mickiewicz}');
  SELECT add_new_book('Ten obcy', '{Irena Jurgielewiczowa}');
  SELECT add_new_book('Krew elfów', '{Andrzej Sapkowski}');
  SELECT add_new_book('Wieża jaskółki', '{Andrzej Sapkowski}');
  SELECT add_new_book('Ostatnie życzenie', '{Andrzej Sapkowski}');
  SELECT add_new_book('Pani jeziora', '{Andrzej Sapkowski}');
  SELECT add_new_book('Miecz przeznaczenia', '{Andrzej Sapkowski}');
  SELECT add_new_book('Czas pogardy', '{Andrzej Sapkowski}');
  SELECT add_new_book('Chrzest ognia', '{Andrzej Sapkowski}');
  SELECT add_new_book('Sezon burz', '{Andrzej Sapkowski}');
  SELECT add_new_book('Seria niefortunnych zdarzeń', '{Lemony Snicket}');
  SELECT add_new_book('Wprowadzenie do algorytmów', '{Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein}', '{Informatyka i matematyka}');



  INSERT INTO branches(branch_name, address, phone_num)
  VALUES
    ('Stare Miasto', 'ul. Rajska 1, 31-124 Kraków', '12 375 22 00'),
    ('Grzegórzki', 'ul. Masarska 14, 33-332 Kraków', '12 431 00 68'),
    ('Prądnik Czerwony', 'ul. Dobrego Pasterza 6, 31-416 Kraków', NULL),
    ('Prądnik Biały', 'ul. Ojcowska 27, 31-344 Kraków', '797 301 011'),
    ('Krowodrza', 'ul. Kazimierza Wielkiego 112/2, 30-074 Kraków', '012 636 9591'),
    ('Bronowice', 'ul. Zarzecze 2, 30-134 Kraków', '12 632 13 75'),
    ('Zwierzyniec', 'ul. Bolesława Prusa 8, 30-117 Kraków', '012 421 5667'),
    ('Dębniki', 'ul. Praska 50, 30-322 Kraków', '012 267 0303'),
    ('Łagiewniki', 'ul. Żywiecka 11, 30-427 Kraków', '012 268 1615'),
    ('Borek Fałęcki', 'ul. Niemcewicza 5, 30-590 Kraków', NULL),
    ('Swoszowice', 'ul. Inicjatywy Lokalnej 2, 30-499 Kraków', '12 264 9076'),
    ('Podgórze Duchackie', 'ul. Ks. Tischnera 14, 30-500 Kraków', NULL),
    ('Bieżanów', 'ul. Jana Kurczaba 4, 30-868 Kraków', '12 658 2612'),
    ('Prokocim', 'ul. Dygasińskiego 1, 30-901 Kraków', NULL),
    ('Podgórze', 'Rynek Podgórski 3, 30-533 Kraków', '12 656 6222'),
    ('Czyżyny', 'Osiedle Dywizjonu 303 24, 31-874 Kraków', '12 647 6264'),
    ('Mistrzejowice', 'ul. Miśnieńska 28, 31-612 Kraków', NULL),
    ('Bieńczyce', 'Osiedle Kalinowe 14, 31-812 Kraków', '12 641 4562'),
    ('Wzgórza Krzesławickie', 'Osiedle Na Stoku 5, 31-703 Kraków', '012 645 3002'),
    ('Nowa Huta', 'Osiedle Centrum B 2, 31-927 Kraków', '12 644 7840');

  INSERT INTO publishers(publisher_name, creation_date, address, phone_num)
  VALUES
    ('Apostolicum', NULL, NULL, NULL),
    ('BIBLOS', NULL, NULL, NULL),
    ('BookRage', NULL, NULL, NULL),
    ('Centrum Badań i Innowacji Pro-Akademia', NULL, NULL, NULL),
    ('Correspondance des Arts', NULL, NULL, NULL),
    ('Czytelnia dla wszystkich', NULL, NULL, NULL),
    ('Eduintegrator', NULL, NULL, NULL),
    ('ELAY', NULL, NULL, NULL),
    ('Fundacja Instytut Wydawniczy „Książka i Prasa”', NULL, NULL, NULL),
    ('Fundacja Nasza Przyszłość', NULL, NULL, NULL),
    ('Gdański Klub Fantastyki', NULL, NULL, NULL),
    ('Grupa kapitałowa PWN', NULL, NULL, NULL),
    ('Hanami', NULL, NULL, NULL),
    ('Hejnał', NULL, NULL, NULL),
    ('Grupa Wydawnicza Helion', NULL, NULL, NULL),
    ('Instytut Wydawniczy Agape', NULL, NULL, NULL),
    ('Instytut Wydawniczy SIMP', NULL, NULL, NULL),
    ('Jacek Music', NULL, NULL, NULL),
    ('Japonica Polonica Fantastica', NULL, NULL, NULL),
    ('Książnica-Atlas', NULL, NULL, NULL),
    ('Księgarnia św. Jacka', NULL, NULL, NULL),
    ('Lupus', NULL, NULL, NULL),
    ('Marpress', NULL, NULL, NULL),
    ('Wydawnictwo Michalineum', NULL, NULL, NULL),
    ('Niezależna Oficyna Wydawnicza', NULL, NULL, NULL),
    ('Noir sur Blanc', NULL, NULL, NULL),
    ('Officyna Liberałów', NULL, NULL, NULL),
    ('Oficyna Monos', NULL, NULL, NULL),
    ('Polskie Towarzystwo Astronomiczne', NULL, NULL, NULL),
    ('Polskie Wydawnictwo Encyklopedyczne', NULL, NULL, NULL),
    ('Rewasz', NULL, NULL, NULL),
    ('Wydawnictwo Solaris', NULL, NULL, NULL),
    ('Słowo Prawdy', NULL, NULL, NULL),
    ('Sport i Turystyka', NULL, NULL, NULL),
    ('Superpress', NULL, NULL, NULL),
    ('Tajne Wojskowe Zakłady Wydawnicze', NULL, NULL, NULL),
    ('TM-Semic', NULL, NULL, NULL),
    ('Wydawnictwo Altenberga', NULL, NULL, NULL),
    ('Wydawnictwo Armoryka', NULL, NULL, NULL),
    ('Wydawnictwo Czarne', NULL, NULL, NULL),
    ('Wydawnictwo Czerwone i Czarne', NULL, NULL, NULL),
    ('Wydawnictwo im. Konstytucji 3 Maja', NULL, NULL, NULL),
    ('Wydawnictwo Kirin', NULL, NULL, NULL),
    ('Wydawnictwo Muzyczne GAMMA', NULL, NULL, NULL),
    ('Wydawnictwo Pedagogiczne Operon', NULL, NULL, NULL),
    ('Wydawnictwo Piotra Marciszuka Stentor', NULL, NULL, NULL),
    ('Wydawnictwo Politechniki Śląskiej', NULL, NULL, NULL),
    ('Wydawnictwo Replika', NULL, NULL, NULL),
    ('Wydawnictwo WARTO', NULL, NULL, NULL),
    ('Wydawnictwo Zwiastun', NULL, NULL, NULL),
    ('Zakład Piller-Neumanna', NULL, NULL, NULL),
    ('Wydawnictwo „Znaki Czasu”', NULL, NULL, NULL);

  INSERT INTO clients(client_name, document_number, address, phone_num)
  VALUES
    ('Jan Nowak',          'AVU 123231', 'Kozia Wólka 23',                 '12354213'),
    ('Aleksander Nowak',   'AVU 321331', 'Piekry 53',                      '21737213'),
    ('Jan Bąk',            'ADS 156531', 'Szczyrk 15',                     '18721092'),
    ('Marian Paździoch',   'ACC 123531', 'Zakopane 1',                     '57387423'),
    ('Ferdynand Kiepski',  'AVV 909231', 'Kraków ul. Wrocławska 12',       '23480913'),
    ('Johny Bob',          'ALP 123325', 'Kraków ul. Łojasiewicza 6',      '47536191'),
    ('Johny Deep',         'ALL 901723', 'Kraków ul. Tyniecka 127',        '09546723'),
    ('Christina Aguillera','ALL 426112', 'Raciborowice 9',                 '13645781'),
    ('Kamil But',          'AQW 897324', 'Michałowice 128',                '43587231'),
    ('Jan Wipler',         'AVU 236542', 'Leśna Dolina 23',                '34284722'),
    ('Aleksander Wielki',  'AQW 098312', 'Mistrzejowice ul. krakowska 127','53478349'),
    ('Barbara Barbara',    'AME 284243', 'Raciborowice 12',                '37638932'),
    ('Agnieszka Szop',     'AAB 942342', 'Piekary 123',                    '48593789'),
    ('Maria Kita',         'ALP 231235', 'Zakopane 55',                    '13763244');

COMMIT;