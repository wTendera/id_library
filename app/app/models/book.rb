class Book < ActiveRecord::Base
  alias_attribute :id, :book_id
  self.table_name = "books"
end
