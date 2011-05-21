class ProjectsController < ApplicationController
  
  respond_to :html, :xml, :json
  
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to projects_path, :notice => "Success!"
    else
      redirect_to new_project_path, :error => "Fail!"
    end
  end
  
  def show
    get_project
    @need = @project.needs.new
  end

  def edit
    get_project
  end
  
  def update
    get_project
    if @project.update_attributes(params[:project])
      redirect_to projects_path, :notice => "Project updated"
    else 
      redirect_to project_path(@project), :error => "Oops"
    end
  end
  
  def destroy
    get_project
    if @project.destroy
      redirect_to projects_path, :notice => "Project deleted"
    else
      redirect_to projects_path, :error => "Could not delete"
    end
  end
  
  private
    def get_project
      @project = Project.find(params[:id])
    end
  
end
