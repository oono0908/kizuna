class ThighsController < ApplicationController
  def index
    @thigh = Thigh.new
    @thighs = Thigh.all
    end

  def create
    Thigh.create(params_chest)
    redirect_to thighs_path
  end

  def destroy
    
  end


  private
    def params_chest
      params.require(:thigh).permit(:title, :content, :video).merge(user_id: current_user.id)
    end
end
