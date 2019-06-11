class TasksController < ApplicationController

  def index
    @unfinished_tasks = Task.unfinished.asc
    @finished_tasks = Task.finished.desc
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, notice: "タスクが登録されました"
    else
      render :new, alert: "登録に失敗しました"
    end
  end

  def destroy
    task = Task.find(params[:id])
    if task.destroy
      redirect_to root_path, notice: "タスクが削除されました"
    else
      render :index, alert: "削除に失敗しました"
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to root_path, notice: "タスクが変更されました"
    else
      render :edit, alert: "変更に失敗しました"
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :body, :scheduled, :finished, :priority)
  end

end
