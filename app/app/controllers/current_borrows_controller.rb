class CurrentBorrowsController < ApplicationController
  def index
    @infos = CurrentBorrow.all
  end
end