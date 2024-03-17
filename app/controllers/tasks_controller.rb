class TasksController < ApplicationController
  before_action :authenticate
  # before_action :load_task - ensures the load_task method is called before show, edit, update, and destroy actions.
  before_action :load_task, except: [:new, :index, :create]

  def index
    @tasks = current_user.tasks.all # get only the tasks that belong the the current user
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    @task.user = current_user
    if @task.save
      redirect_to tasks_path, notice: "Task created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update task_params
      redirect_to tasks_path, notice: "Task was updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, alert: "Task was removed"
  end


  private

  def load_task
    @task = current_user.tasks.find params[:id]
  end

  def task_params
    params.require(:task).permit(:name,:due_date)
  end

end
