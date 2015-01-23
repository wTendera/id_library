class Branch < ActiveRecord::Base
  alias_attribute :id, :branch_id
  self.table_name = "branches"
  
end
