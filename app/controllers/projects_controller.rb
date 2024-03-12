class ProjectsController < ApplicationController
  def index
    @projects = Project.order(:code)
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
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

  def project_params
    params.require(:project).permit(:code, :description, :start_date, :end_date)
  end
end
