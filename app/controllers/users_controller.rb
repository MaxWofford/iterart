class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    @wip = @projects.where(in_progress: true)
  end
end
