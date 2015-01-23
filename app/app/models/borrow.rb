class Borrow < ActiveRecord::Base
  alias_attribute :id, :borrow_id
  self.table_name = "borrows"
end
