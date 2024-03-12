class ProjectsController < ApplicationController
  def index
    @projects = Project.order(:code)
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
