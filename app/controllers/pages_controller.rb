class PagesController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit

  end

  def update
    #gets info from PATCH '/tasks/:id'
    @tasks.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @tasks.destroy
    redirect_to tasks_path
  end

  def set_task
    @tasks = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name)
  end

end
