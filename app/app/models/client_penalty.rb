class ClientPenalty < ActiveRecord::Base
  self.table_name = 'clients_penalties'
  after_initialize :readonly!

end
