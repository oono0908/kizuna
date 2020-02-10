class ArmsController < ApplicationController
  def index
    @arm = Arm.new
    @arms = Arm.all
    end

  def create
    Arm.create(params_belly)
    redirect_to arms_path
  end

  def destroy
    
  end


  private
    def params_belly
      params.require(:arm).permit(:title, :content, :video).merge(user_id: current_user.id)
    end
end
