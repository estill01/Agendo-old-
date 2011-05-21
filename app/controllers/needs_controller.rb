class NeedsController < ApplicationController
  
  attr_accessor :description, :completed
  before_filter :get_project
  respond_to :html, :xml, :json
  
  def create
    @need = @project.needs.new(params[:id])
    if @need.save
      redirect_to project_path(@project), :notice => "Need created"
    else
      redirect_to project_path(@project), :error => "Something went wrong."
    end
  end
  
  def complete
    @need = @project.needs.find(params[:id])
    @need.completed = true
    @need.save
    redirect_to project_path(@project), :notice => "you completed a need!"
  end
  
  private
    def get_project
        @project = List.find(params[:project_id])
    end
end
