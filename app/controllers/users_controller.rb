class UsersController < ApplicationController
  def index
    @users = User.order(:e_mail)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:e_mail, :name, :surname, :start_date, :end_date))
    if @user.save
      redirect_to users_path
    else
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
