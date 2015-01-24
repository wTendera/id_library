class TerminatedBorrow < ActiveRecord::Base
  self.table_name = 'terminated_borrows'
  after_initialize :readonly!
end
