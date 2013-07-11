class OwnersController < ApplicationController
  def index
    @users = User.all
    @blog = Blog.find(params[:blog_id])
  end

  def create
    Owner.create(:user_id => params[:user_id], :blog_id => params[:blog_id])
    redirect_to :back
  end

end
