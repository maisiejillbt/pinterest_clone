class Api::SavesController < ApplicationController

  def create
    @save = Save.new(save_params)
    if @save.save
      render json: ["the pin was saved"]
    else
      render @save.errors.full_messages, status: 401
    end
  end
  
  # def update
  #   @save = selected_save
  #   if @save && @save.update_attributes(save_params)
  #     render json: ["the pin was updated"]
  #   elsif !@save
  #     render json: ['Could not locate save'], status: 400
  #   else
  #     render json: @save.errors.full_messages, status: 401
  #   end
  # end
  
  # def show
  #   @save = selected_save
  # end
  
  # def index
  #   @saves = Save.all.select{|save| save.user_id == current_user.id}
  # end

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
    params.require(:save).permit(:name, :user_id, :description, :public, :created_at)
  end
end
