class UsersController < ApplicationController
  def index
    @users = User.order(:e_mail)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
