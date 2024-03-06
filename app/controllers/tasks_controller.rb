class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: 'Your new task was successfully added.'
    else
      render :new
    end
  end

  private

  # Strong parameters for task creation
  def task_params
    params.require(:task).permit(:title, :details)
  end
end
