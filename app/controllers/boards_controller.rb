class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :destroy, :update]

  def index
    @boards = Board.all 
  end

  def new
  end

  def edit
  end

  def show
    set_board
    @lists = List.find_lists(@board.id)
    @list = List.find(params[:id])

  end

  private

  def set_board
   @board = Board.find(params[:id])
  end

end
