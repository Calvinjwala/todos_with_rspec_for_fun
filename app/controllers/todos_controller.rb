class TodosController < ApplicationController
  def create
    Todo.create params.require(:todo).permit(:name)
    redirect_to :back
  end
end