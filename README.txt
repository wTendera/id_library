This is simple database representing library.

PSQL is required for installing it.

Clone repo.
Change directory to cloned one.

Type in console
$ psql < clear.sql; psql < create.sql; psql < fill.sql
Then type
$psql
# \connect library

And here you are



Clear file contains script to delete database.
Create file containts whole schema with triggers, functions and view
Fill file contains sample data

There are few views that can be used:
1) books_rating :display ratings of books
2) titles_info :display specific info about each title
3) authors_info :display specific data about each author
4) current_borrows :shows which books/specimens are currently borrowed
5) terminating_borrows :shows which borrows has return_finale_date in next week
6) terminated_borrows: shows which borrows weren't returned in time
7) clients_penalties :shows which clients didn't return books in time and how much penalty they are due