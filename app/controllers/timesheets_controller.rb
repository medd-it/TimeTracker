class TimesheetsController < ApplicationController
  def index
    @timesheets = Timesheet.order(:user_id, :start)
  end

  def show
    @timesheet = Timesheet.find(params[:id])
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
    @timesheet = Timesheet.find(params[:id])
  end

  def update
    @timesheet = Timesheet.find(params[:id])
    if @timesheet.update(timesheet_params)
      redirect_to timesheet_path(@timesheet.id)
    else
      render('edit')
    end
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
