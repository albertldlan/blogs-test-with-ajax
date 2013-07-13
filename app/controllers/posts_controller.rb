class PostsController < ApplicationController
  
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
    @post = Post.find(params[:id])
  end

  def update
    post = Post.update(params[:id], params[:post])
    redirect_to post.blog
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
    Post.find(params[:id]).destroy
    redirect_to :back
  end
end
