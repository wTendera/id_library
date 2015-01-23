class Category < ActiveRecord::Base
  alias_attribute :id, :category_id
  self.table_name = "categories"
end
