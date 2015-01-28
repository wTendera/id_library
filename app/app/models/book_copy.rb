class BookCopy < ActiveRecord::Base
  alias_attribute :id, :specimen_id
  self.table_name = "specimens"
  belongs_to :edition
  delegate :book, :to => :edition, :allow_nil => true
  has_many :borrows

  def cover_type
    hard_cover ? "hard" : "soft"
  end
end
