class Edition < ActiveRecord::Base
  alias_attribute :id, :edition_id
  self.table_name = "editions"
  belongs_to :book
  has_many :book_copies
end
