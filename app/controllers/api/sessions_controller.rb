class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if @user.nil?
      render json: ['Sorry, your email or password are incorrect'], status: 401
    else
      login!(@user)
      render 'api/users/show';
    end
  end

  def destroy
    logout!
    render json: { message: 'Logout successful.' }
  end
end
