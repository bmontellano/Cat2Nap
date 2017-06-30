class SessionsController < ApplicationController
  def new    
  end

  def create
      @user = User.find_by_email(params[:login][:email])
      # if the user exists And they put in the right password:
      if @user && @user.authenticate(params[:login][:password])
        #generate a cookie for the user
        #redirect them somwhere
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        #redirect back to login page and try again
        redirect_to login_path
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
  end
