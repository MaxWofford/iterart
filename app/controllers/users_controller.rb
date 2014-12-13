class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artwork_iterations = @user.artwork_iterations
  end
end
