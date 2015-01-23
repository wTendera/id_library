class Book < ActiveRecord::Base
  alias_attribute :id, :book_id
  self.table_name = "books"
  has_many :book_categories
  has_many :categories, through: :book_categories

  has_many :author_books
  has_many :authors, through: :author_books
end
