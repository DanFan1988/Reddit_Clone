class RootController < ApplicationController
  def root
  	@posts = Post.all
  end
end
