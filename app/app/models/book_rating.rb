class BookRating < ActiveRecord::Base
  self.table_name = 'books_rating'
  after_initialize :readonly!

end
