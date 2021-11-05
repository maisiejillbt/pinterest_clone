class BoardsController < ApplicationController

  skip_before_action :verify_authenticity_token
  def new
    @board = Board.new
    render :new
  end

  def create
    @board = Board.new(board_params)
    @board.user_id = current_user.id
    @board.created_at = new Date();
    if @board.save
      redirect_to board_url(@board)
    else
      render json: @board.errors.full_messages, status: 422
    end
  end

  def show
    @board = Board.find(params[:id])
    if @board
      render :show
    else
      render json: @board.errors.full_messages, status: 404
    end
  end

  def index 
    @boards = Board.all
  end

  def edit
    @board = Board.find(params[:id])
    render :edit
  end

  def update
    @board = Board.find(params[:id])
    if @board.update(board_params)
      redirect_to pin_url(@board)
    else
      render json: @board.errors.full_messages, status: 422
    end
  end

  def destroy
    @board = Board.find(params[:id])
    if @board.destroy
      redirect_to board_url
    else
      render plain: "You can't destroy what's not there."
    end
  end

  private

  def board_params
    params.require(:board).permit(:name, :user_id, :description, :public, :created_at)
  end
end
