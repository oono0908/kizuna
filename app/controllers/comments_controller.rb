class CommentsController < ApplicationController
  before_action :set_group
  before_action :set_message

  
  def create
    Comment.create(comment_params)
    redirect_to group_message_path(@group,@message) 
  end

private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, group_id: params[:group_id], message_id: params[:message_id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
  
  def set_message
    @message = Message.find(params[:message_id])
  end

end


# def comments_path
#   group_message_comments(group, message, self)
# end

# @comment.comments_path