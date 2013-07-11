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
  end

  def update
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def destroy
  end
end
