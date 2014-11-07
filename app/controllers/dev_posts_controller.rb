class DevPostsController < ApplicationController

  # GET /dev_posts
  def index
    @dev_posts = DevPost.all
  end

  # GET /dev_posts/1
  def show
    @dev_post = DevPost.find(params[:id])
  end

  private

    # Only allow a trusted parameter "white list" through.
    def dev_post_params
      params.require(:dev_post).permit(:title, :body)
    end
end
