class HomeController < ApplicationController
  def index
    @todo = Todo.last
    @new_todo = Todo.new
  end
end
