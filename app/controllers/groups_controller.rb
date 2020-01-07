class GroupsController < ApplicationController
  before_action :set_group, only: [:edit, :update]

  def index
    # @comment = Comment.new
    # @message = Message.new
    # @comments = .comments.includes(:user)
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: 'Created group'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to root_path, notice: 'グループを更新しました'
    else
      render :edit
    end
  end

  
  private
  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end
  
  def set_group
    @group = Group.find(params[:id])
  end


  # def get_group
  #   # @group = Group.find(params[:group_id])
  # end
end
