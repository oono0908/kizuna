class BacksController < ApplicationController
  def index
    @back = Back.new
    @backs = Back.all
    end

  def create
    Back.create(params_belly)
    redirect_to backs_path
  end

  def destroy
    
  end


  private
    def params_belly
      params.require(:back).permit(:title, :content, :video).merge(user_id: current_user.id)
    end
end
