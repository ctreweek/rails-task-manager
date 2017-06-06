class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.update(task_params)

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy!
  end


  private

  def task_params
    params.require(:restaurant).permit(:name, :description)
  end

end
