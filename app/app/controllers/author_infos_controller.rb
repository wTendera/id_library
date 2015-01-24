class AuthorInfosController < ApplicationController
  def index
    @infos = AuthorInfo.all
  end
end