class BlogController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
  end

end
