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
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project.id)
    else
      render('edit')
    end
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
