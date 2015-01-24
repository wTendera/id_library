class TerminatingBorrowsController < ApplicationController
  def index
    @infos = TerminatingBorrow.all
  end
end