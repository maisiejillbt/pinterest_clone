class Api::FollowsController < ApplicationController

  def create
    @follow = Follow.new(follow_params)
    if @follow.save
      render json: ["the follow was saved"]
    else
      render @follow.errors.full_messages, status: 401
    end
  end

  def destroy
    @follow = selected_follow
    if @follow
      @follow.destroy
      render json: ["youve unfollowed"]
    else
      render ['Could not find follow']
    end
  end
  
  private

  def selected_follow
    Follow.find(params[:id])
  end
  
  def follow_params
    params.require(:follow).permit(:follower_id, :follower_id, :created_at)
  end
end