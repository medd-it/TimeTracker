class AccessController < ApplicationController

  skip_before_action :confirm_logged_in, only: [:new, :create]

  def new
    if logged_in?
      redirect_to root_path
    end
  end

  def create
    user = User.find_by e_mail: params[:username]
    if user != nil
      cookies[:username] = user.e_mail
      session[:user_id] = user.id
      flash[:notice] = "Log in successful"
      redirect_to root_path
    else
      redirect_to new_access_path
    end
  end

  def destroy
    cookies.delete :username
    session[:user_id] = nil
    redirect_to login_path
  end

end
