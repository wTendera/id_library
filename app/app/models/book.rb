class Book < ActiveRecord::Base
  alias_attribute :id, :book_id
  self.table_name = "books"
  has_many :book_categories
  has_many :categories, through: :book_categories

  has_many :author_books
  has_many :authors, through: :author_books

  has_many :ratings

  has_many :editions
  has_many :book_copies, through: :editions

  def rate
    sum = ratings.map(&:rating).sum;
    divide = ratings.count
    if divide == 0
      divide = 1
    end
    sum/divide
  end
end
