class BookRatingsController < ApplicationController
  def index
    @infos = BookRating.all
  end
end