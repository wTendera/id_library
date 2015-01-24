class TerminatedBorrowsController < ApplicationController
  def index
    @infos = TerminatedBorrow.all
  end
end