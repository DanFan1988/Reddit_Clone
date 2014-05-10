class PostsController < ApplicationController

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
	end

	def new
		@subs = Sub.all
	end

	def create
		@post = Post.new(params[:post])

		if @post.save
			redirect_to post_url(@post)
		else
			@subs = Sub.all
			flash.now[:errors] = @post.errors.full_messages
			render :new
		end
	end
end
