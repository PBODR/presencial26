class TodosController < ApplicationController
  before_action :find_todo, only: [:show, :edit, :update, :destroy, :complete]
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todos_params)
    @todo.save
    redirect_to todos_path
  end

  def show
  end

  def edit
  end

  def update
    @todo.update(todos_params)
    redirect_to todos_path
  end

  def destroy
    @todo.delete
    redirect_to todos_path
  end

  def complete
    @todo.completed = true
    @todo.save
    redirect_to todos_path
  end

  def find_todo
    @todo = Todo.find(params[:id])
  end

  private
  def todos_params #scope
    params.require(:todo).permit(:description, :completed)

  end
end
