class UsersController < ApplicationController
  before_action :authorize, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
  @user = User.find(params[:id])
end

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to users_path
      else
        redirect_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation )
end

end
