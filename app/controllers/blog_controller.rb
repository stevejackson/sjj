class BlogController < ApplicationController

  def index
    params[:page] ||= 1

    if params[:tags]
      @posts = Post.tagged_with(params[:tags]).paginate(:page => params[:page])
    else
      @posts = Post.paginate(:page => params[:page])
    end
  end

  def show
    @post = Post.where("slug = ?", params[:id]).first
  end

  def archive
    @posts = Post.all
  end

end
