class VotesController < ApplicationController
  def create
    @vote = Vote.new(params[:vote])
    @vote.user_id = current_user.id
    @post = Post.find(params[:vote][:post_id])
    if @vote.save
      redirect_to sub_url(@post.sub)
    else
			flash.now[:errors] = @post.errors.full_messages
      redirect_to sub_url(@post.sub)
		end
  end
end
