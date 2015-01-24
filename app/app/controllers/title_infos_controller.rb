class TitleInfosController < ApplicationController
  def index
    @infos = TitleInfo.all
  end
end