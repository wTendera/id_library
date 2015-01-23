class BookCategory < ActiveRecord::Base
  self.table_name = "book_category"
  belongs_to :book
  belongs_to :category
end
