class UsersController < ApplicationController
  def index
  return nil if params[:keyword] == ""
  @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id)
    respond_to do |format|
      format.html
      format.json
  end
end

  def edit
  end

  def show
    @user = User.find_by(id: params[:id])
    @train = @user.trains
    @message = @user.messages
    @comment = @user.comments
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else 
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age, :comment, :carrer)
  end
end
