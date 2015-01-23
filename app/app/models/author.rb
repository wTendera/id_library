class Author < ActiveRecord::Base
  alias_attribute :id, :author_id
  self.table_name = "authors"
  has_many :author_books
  has_many :books, through: :author_books
end
