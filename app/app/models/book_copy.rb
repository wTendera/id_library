class BookCopy < ActiveRecord::Base
  alias_attribute :id, :specimen_id
  self.table_name = "specimens"
  belongs_to :edition
  delegate :book, :to => :edition, :allow_nil => true
end
