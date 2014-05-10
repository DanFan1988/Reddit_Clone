class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.author_id = current_user.id
    if @comment.save
      redirect_to post_url(params[:comment][:post_id])
    else
			flash.now[:errors] = @comment.errors.full_messages
      redirect_to post_url(params[:comment][:post_id])
    end
  end
end
