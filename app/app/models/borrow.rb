class Borrow < ActiveRecord::Base
  alias_attribute :id, :borrow_id
  self.table_name = "borrows"
  belongs_to :client
  belongs_to :book_copy, foreign_key: "specimen_id"
end
