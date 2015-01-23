class Publisher < ActiveRecord::Base
  alias_attribute :id, :publisher_id
  self.table_name = "publishers"
end
