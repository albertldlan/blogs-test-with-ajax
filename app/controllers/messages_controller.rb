class MessagesController < ApplicationController

  def create
    @message = Message.create(params[:message])
    @messages = Post.find(@message.post_id).messages
    respond_to do |format|
      format.html {redirect_to post_path(@message.post_id)}
      format.js
    end
  end

  def edit
    @message = Message.find(params[:id])
    respond_to do |format|
      format.html {redirect_to post_path(@message.post_id)}
      format.js
    end
  end

  def update
    @message = Message.update(params[:id], params[:message])
    respond_to do |format|
      format.html {redirect_to post_path(@message.post_id)}
      format.js
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @messages = Post.find(@message.post_id).messages
    @message.destroy
    respond_to do |format|
      format.html { redirect_to post_path(@message.post_id) }
      format.js
    end
  end
end
