class Client < ActiveRecord::Base
  alias_attribute :id, :client_id
  self.table_name = "clients"
  has_many :ratings
  has_many :borrows
end
