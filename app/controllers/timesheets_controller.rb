class TimesheetsController < ApplicationController
  def index
    @timesheets = Timesheet.order(:user_id, :start)
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

  def delete
  end

  def destroy
  end
end
