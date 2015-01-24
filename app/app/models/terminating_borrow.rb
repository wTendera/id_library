class TerminatingBorrow < ActiveRecord::Base
  self.table_name = 'terminating_borrows'
  after_initialize :readonly!
end
