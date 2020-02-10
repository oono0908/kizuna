class HipsController < ApplicationController
  def index
    @hip = Hip.new
    @hips = Hip.all
    end

  def create
    Hip.create(params_chest)
    redirect_to hips_path
  end

  def destroy
    
  end


  private
    def params_chest
      params.require(:hip).permit(:title, :content, :video).merge(user_id: current_user.id)
    end
end
