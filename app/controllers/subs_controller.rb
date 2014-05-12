class SubsController < ApplicationController
	def show
		@sub = Sub.find(params[:id])
		@posts = @sub.posts
	end

	def new
    @sub = Sub.new
	end

	def create
		@sub = Sub.new(params[:sub])

		if @sub.save
			redirect_to sub_url(@sub)
		else
			flash.now[:errors] = @sub.errors.full_messages
			render :new
		end
	end

end
