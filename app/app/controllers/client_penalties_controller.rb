class ClientPenaltiesController < ApplicationController
  def index
    @infos = ClientPenalty.all
  end
end