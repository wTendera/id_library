class Author < ActiveRecord::Base
  alias_attribute :id, :author_id
  self.table_name = "authors"
end
