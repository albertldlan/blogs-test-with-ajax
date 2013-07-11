class MessagesController < ApplicationController

  # def create
  #   @message = Message.new(params[:message])
  #   if @message.save
  #     redirect_to post_path(@message.post_id)
  #   else
  #     @post = Post.find(@message.post_id)
  #     render :template => "posts/show"
  #   end
  # end

  def create
    @message = Message.create!(params[:message])
    @messages = Post.find(@message.post_id).messages
    respond_to do |format|
      format.html {redirect_to post_path(@message.post_id)}
      format.js
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
