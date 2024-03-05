class ApplicationController < ActionController::Base

  before_action :confirm_logged_in

  before_action :get_user_info_from_session

  def logged_in?
    session[:user_id].present?
  end

  private

  def get_user_info_from_session
    @username = cookies[:username]
    @user_id = session[:user_id]
  end

  def confirm_logged_in
    unless logged_in?
      redirect_to login_path
    end
  end

end
