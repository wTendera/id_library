class TitleInfo < ActiveRecord::Base
  self.table_name = 'titles_info'
  after_initialize :readonly!

end
