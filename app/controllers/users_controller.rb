class UsersController < ApplicationController
  def show
    @user = User.where(username: params[:username]).first
    @artwork_iterations = @user.artwork_iterations
  end
end
