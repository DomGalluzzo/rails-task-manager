class TasksController < ApplicationController
  # * List out all tasks on /tasks
  def index
    @tasks = Task.all
  end

  # * Display individual task on /tasks/#{id}
  def show
    @task = Task.find(params[:id])
  end
  
  # * Add new instance for new task
  def new
    @task = Task.new
  end
  
  # * Create and save new instance of task
  def create
    @task = Task.new(task_params)
    @task.save

    # ! Strong params
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end
  
  

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
