class PagesController < ApplicationController

  def home
  end

  def index
    @users = User.all.order('name ASC')
    # render json: @users
  end

end
