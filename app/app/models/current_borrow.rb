class CurrentBorrow < ActiveRecord::Base
  self.table_name = 'current_borrows'
  after_initialize :readonly!
end
