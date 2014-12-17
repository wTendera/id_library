CREATE DATABASE library;
\connect library

CREATE TABLE author ( 
	id                   serial  NOT NULL,
	author_name          varchar(100)  NOT NULL,
	birth_date           date  ,
	death_date           date  ,
	phone_num            varchar(100)  ,
	address              varchar(100)  ,
	CONSTRAINT pk_author PRIMARY KEY ( id )
 );

ALTER TABLE author ADD CONSTRAINT ck_0 CHECK ( death_date > birth_date );

CREATE TABLE book ( 
	id                   serial  NOT NULL,
	title                varchar(100)  NOT NULL,
	CONSTRAINT pk_book PRIMARY KEY ( id )
 );

CREATE TABLE branch ( 
	id                   integer  NOT NULL,
	branch_name          varchar(100)  NOT NULL,
	address              varchar(100)  NOT NULL,
	phone_num            varchar(20)  ,
	CONSTRAINT pk_branch PRIMARY KEY ( id )
 );

CREATE TABLE category ( 
	id                   serial  NOT NULL,
	category_name        varchar(100)  NOT NULL,
	CONSTRAINT pk_category PRIMARY KEY ( id )
 );

CREATE TABLE client ( 
	id                   serial  NOT NULL,
	client_name          varchar(100)  NOT NULL,
	address              varchar(100)  NOT NULL,
	document_number      varchar(50)  NOT NULL,
	phone_num            varchar(50)  ,
	signin_date          date DEFAULT current_date NOT NULL,
	CONSTRAINT pk_client PRIMARY KEY ( id )
 );

CREATE TABLE publisher ( 
	id                   serial  NOT NULL,
	publisher_name       varchar(100)  NOT NULL,
	phone_num            varchar(100)  ,
	creation_date        date  ,
	address              varchar(100)  ,
	CONSTRAINT pk_publisher PRIMARY KEY ( id )
 );

CREATE TABLE author_book ( 
	author_id            integer  NOT NULL,
	book_id              integer  NOT NULL,
	CONSTRAINT idx_author_book PRIMARY KEY ( author_id, book_id ),
	CONSTRAINT fk_author_book_author FOREIGN KEY ( author_id ) REFERENCES author( id )    ,
	CONSTRAINT fk_author_book_book FOREIGN KEY ( book_id ) REFERENCES book( id )    
 );

CREATE TABLE book_categories ( 
	book_id              integer  NOT NULL,
	category_id          integer  NOT NULL,
	CONSTRAINT idx_book_categories PRIMARY KEY ( book_id, category_id ),
	CONSTRAINT fk_book_categories_book FOREIGN KEY ( book_id ) REFERENCES book( id )    ,
	CONSTRAINT fk_book_categories_category FOREIGN KEY ( category_id ) REFERENCES category( id )    
 );


CREATE TABLE book_edition ( 
	id                   serial  NOT NULL,
	book_id              integer  NOT NULL,
	publisher_id         integer  ,
	edition              varchar(100)  ,
	release_date         date  ,
	isbn                 varchar(15)  NOT NULL,
	book_language        varchar(20) DEFAULT 'polish' NOT NULL,
	CONSTRAINT pk_book_specimen PRIMARY KEY ( id ),
	CONSTRAINT fk_book_specimen_book FOREIGN KEY ( book_id ) REFERENCES book( id )    ,
	CONSTRAINT fk_book_edition_publisher FOREIGN KEY ( publisher_id ) REFERENCES publisher( id )    
 );

CREATE TABLE book_ratings ( 
	client_id            integer  NOT NULL,
	book_id              integer  NOT NULL,
	rating               integer  NOT NULL,
	CONSTRAINT idx_book_ratings_1 PRIMARY KEY ( client_id, book_id ),
	CONSTRAINT fk_book_ratings_book FOREIGN KEY ( book_id ) REFERENCES book( id )    ,
	CONSTRAINT fk_book_ratings_client FOREIGN KEY ( client_id ) REFERENCES client( id )    
 );

CREATE TABLE book_specimen ( 
	id                   serial  NOT NULL,
	book_edition_id      integer  NOT NULL,
	cover_type           varchar(10)  ,
	branch_id            integer  ,
	CONSTRAINT pk_book_specimen_0 PRIMARY KEY ( id ),
	CONSTRAINT fk_book_specimen_book_edition FOREIGN KEY ( book_edition_id ) REFERENCES book_edition( id )    ,
	CONSTRAINT fk_book_specimen_branch FOREIGN KEY ( branch_id ) REFERENCES branch( id )    
 );

ALTER TABLE book_specimen ADD CONSTRAINT ck_3 CHECK ( cover_type = 'hard' or cover_type = 'soft' );

CREATE TABLE client_borrows ( 
	id                   serial  NOT NULL,
	client_id            integer  NOT NULL,
	book_specimen_id     integer  NOT NULL,
	borrow_date          date DEFAULT current_date NOT NULL,
	return_date          date  ,
	return_final_date    date  NOT NULL,
	CONSTRAINT pk_client_borrows PRIMARY KEY ( id ),
	CONSTRAINT fk_client_borrows FOREIGN KEY ( book_specimen_id ) REFERENCES book_specimen( id )    ,
	CONSTRAINT fk_client_borrows_client FOREIGN KEY ( client_id ) REFERENCES client( id )    
 );

ALTER TABLE client_borrows ADD CONSTRAINT ck_1 CHECK ( borrow_date < return_final_date );

ALTER TABLE client_borrows ADD CONSTRAINT ck_2 CHECK ( (borrow_date < return_date) or return_date is null );
