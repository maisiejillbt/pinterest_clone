class Api::BoardsController < ApplicationController
  skip_before_action :verify_authenticity_token
   
  def create
    @board = Board.new(board_params)
    if @board.save
      render :show
    else
      render @board.errors.full_messages, status: 401
    end
  end
  
  def update
    @board = selected_board
    if @board && @board.update_attributes(board_params)
      render :show
    elsif !@board
      render json: ['Could not locate board'], status: 400
    else
      render json: @board.errors.full_messages, status: 401
    end
  end
  
  def show
    @board = selected_board
  end
  
  def index
    @boards = Board.all.select{|board| board.user_id == current_user.id}
  end
  
  def destroy
    @board = selected_board
    if @board
      @board.destroy
      render :show
    else
      render ['Could not find board']
    end
  end
  
  private

  def selected_board
    Board.find(params[:id])
  end
  
  def board_params
    params.require(:board).permit(:name, :user_id, :description, :public, :created_at)
  end
end
