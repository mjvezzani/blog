class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	if Post.create params[post_params]
  		redirect_to posts_path
  	else
  		redirect_to new_post_path
  	end
  end

  private

  def post_params
  	params.require(:post).permit(:title, :body)
  end
end
