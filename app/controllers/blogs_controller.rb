class BlogsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  def index
    @all_blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(:name => params[:blog][:name], :description => params[:blog][:description])
    if @blog.save
      Owner.create(:user_id => params[:blog][:user_id], :blog_id => @blog.id)
      redirect_to @blog
    else
      render "new"
    end
  end

  def owners
    @users = User.all
  end

  def add_owner
    Owner.create(:user_id => params[:user_id], :blog_id => params[:blog_id])
    redirect_to :back
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.update(params[:id], params[:blog])
    redirect_to blog
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def destroy
    Blog.find(params[:id]).destroy
    redirect_to root_url
  end
end
