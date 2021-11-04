class Api::PinsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      render :show
    else
      render @pin.errors.full_messages, status: 401
    end
  end
  
  def update
    @pin = selected_pin
    if @pin && @pin.update_attributes(pin_params)
      render :show
    elsif !@pin
      render json: ['Could not locate pin'], status: 400
    else
      render json: @pin.errors.full_messages, status: 401
    end
  end
  
  def show
    @pin = selected_pin
  end
  
  def index
    @pins = Pin.all
  end
  
  def destroy
    @pin = selected_pin
    if @pin
      @pin.destroy
      render :show
    else
      render ['Could not find pin']
    end
  end
  
  private
  
  def selected_pin
    Pin.find(params[:id])
  end
  
  def pin_params
    params.require(:pin).permit(:title, :user_id, :description, :created_at, :photo)
  end
end
