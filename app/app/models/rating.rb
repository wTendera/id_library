class Rating < ActiveRecord::Base
  self.table_name = "ratings"
  belongs_to :client
  belongs_to :book
end
