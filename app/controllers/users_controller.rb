class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
    redirect_to user_foods_path @user.id
  end
end
