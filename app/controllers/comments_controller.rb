class CommentsController < ApplicationController
  def create
    @artwork_iteration = ArtworkIteration.find(params[:artwork_iteration_id])
    @comment = @artwork_iteration.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to artwork_iteration_path(@artwork_iteration)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
