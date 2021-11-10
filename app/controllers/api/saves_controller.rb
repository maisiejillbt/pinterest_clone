class Api::SavesController < ApplicationController

  def create
    @save = Save.new(save_params)
    if @save.save
      render json: ["the pin was saved"]
    else
      render @save.errors.full_messages, status: 401
    end
  end

  def destroy
    @save = selected_save
    if @save
      @save.destroy
      render json: ["the pin was destroyed"]
    else
      render ['Could not find save']
    end
  end
  
  private

  def selected_save
    Save.find(params[:id])
  end
  
  def save_params
    params.require(:save).permit(:pin_id, :board_id, :created_at)
  end
end
