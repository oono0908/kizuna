class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(comment_id: params[:comment_id])
    @group = Group.find(params[:group_id])
    @message = Message.find(params[:message_id])
    redirect_to group_message_path(@group,@message) 
  end

  def destroy
    @like = Like.find_by(comment_id: params[:comment_id], user_id: current_user.id)
    @like.destroy
    @group = Group.find(params[:group_id])
    @message = Message.find(params[:message_id])
    redirect_to group_message_path(@group,@message) 
  end
end
