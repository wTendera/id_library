class AuthorInfo < ActiveRecord::Base
  self.table_name = 'authors_info'
  after_initialize :readonly!

end
