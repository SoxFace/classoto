class PagesController < ApplicationController
  
  def home
  end

  def index
    @users = User.all.order('name ASC')
  end

end