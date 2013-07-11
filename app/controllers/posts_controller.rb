class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def show
    @post = Post.find(params[:id])
    @message = Message.new
    respond_to do |format|
      format.html
      format.rss
    end
  end

  def destroy
  end
end
