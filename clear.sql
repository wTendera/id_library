BEGIN;  

  \connect library
  DROP TABLE IF EXISTS authors        CASCADE;
  DROP TABLE IF EXISTS books          CASCADE;
  DROP TABLE IF EXISTS branches       CASCADE;
  DROP TABLE IF EXISTS categories     CASCADE;
  DROP TABLE IF EXISTS clients        CASCADE;
  DROP TABLE IF EXISTS publishers     CASCADE;
  DROP TABLE IF EXISTS author_book    CASCADE;
  DROP TABLE IF EXISTS book_category  CASCADE;
  DROP TABLE IF EXISTS editions       CASCADE;
  DROP TABLE IF EXISTS ratings        CASCADE;
  DROP TABLE IF EXISTS specimens      CASCADE;
  DROP TABLE IF EXISTS borrows        CASCADE;

COMMIT;