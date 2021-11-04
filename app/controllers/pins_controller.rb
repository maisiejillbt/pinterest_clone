
class PinsController < ApplicationController

  def new
    @pin = Pin.new
    render :new
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user_id = current_user.id
    @pin.created_at = new Date();
    if @pin.save
      redirect_to pin_url(@pin)
    else
      render json: @pin.errors.full_messages, status: 422
    end
  end

  def show
    @pin = Pin.find(params[:id])
    if @pin
      render :show
    else
      render json: @pin.errors.full_messages, status: 404
    end
  end

  def index 
    @pins = Pin.all
    render :index
  end

  def edit
    @pin = Pin.find(params[:id])
    render :edit
  end

  def update
    @pin = Pin.find(params[:id])
    if @pin.update(pin_params)
      redirect_to pin_url(@pin)
    else
      render json: @pin.errors.full_messages, status: 422
    end
  end

  def destroy
    @pin = Pin.find(params[:id])
    if @pin.destroy
      redirect_to pin_url
    else
      render plain: "You can't destroy what's not there."
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :user_id, :description, :created_at, :photo)
  end
end
