class Category < ActiveRecord::Base
  alias_attribute :id, :category_id
  self.table_name = "categories"
  has_many :book_categories
  has_many :books, through: :book_categories
end
