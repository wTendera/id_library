class BookCopy < ActiveRecord::Base
  alias_attribute :id, :specimen_id
  self.table_name = "specimens"
end
