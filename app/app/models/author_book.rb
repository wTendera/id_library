class AuthorBook < ActiveRecord::Base
  self.table_name = "author_book"
  belongs_to :author
  belongs_to :book
end
