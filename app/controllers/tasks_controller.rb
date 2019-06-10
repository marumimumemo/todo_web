class TasksController < ApplicationController

  def index
    @tasks = Task.order("scheduled ASC")
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, notice: "タスクが登録されました"
    else
      render :index, alert: "登録に失敗しました"
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

  private

  def task_params
    params.require(:task).permit(:title, :body, :scheduled, :completion, :priority)
  end

end
