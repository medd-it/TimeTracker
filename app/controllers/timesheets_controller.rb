class TimesheetsController < ApplicationController
  def index
    @timesheets = Timesheet.order(:user_id, :start)
  end

  def show
  end

  def new
    @timesheet = Timesheet.new
  end

  def create
    @timesheet = Timesheet.new(timesheet_params)
    if @timesheet.save
      redirect_to timesheets_path
    else
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def timesheet_params
    params.require(:timesheet).permit(:user_id, :project_id, :start, :end, :notes)
  end
end
