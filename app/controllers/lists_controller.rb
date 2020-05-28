class ListsController < ApplicationController
  def index
    @board = Board.find(params[:id])
    @lists = find_lists(@boards)
  end

  def new
  end

  def edit
  end

  def show
    @list = List.find(params[:id])
    @tasks = Task.find_tasks(@list.id)
    
  end


end
