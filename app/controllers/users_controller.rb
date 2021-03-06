class UsersController < ApplicationController
  # before_action :check_if_admin, :only => [:index]
  before_action :check_if_logged_in, :only => [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      render :new
    end
  end

  def index
    if params[:search]
      @users = User.search(params[:search]).order("name ASC")
    else
      @users = User.all.order('name ASC')
    end
  end

  def show
    @user = User.find params[:id]
    @comment = Comment.new
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    user.save
    redirect_to user
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :image, :email, :cohort_id, :search)
  end

  private
  def check_if_admin
    redirect_to(root_path) unless @current_user.present? && @current_user.is_admin?
  end

  def check_if_logged_in
    redirect_to(root_path) unless @current_user.present?
  end

end
