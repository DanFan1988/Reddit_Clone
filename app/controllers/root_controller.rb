class RootController < ApplicationController
  def root
  	@posts = posts.all
  end
end
