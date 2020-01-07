class ChestsController < ApplicationController
  def index
    @chest = Chest.new
    @chests = Chest.all
    end

  def create
    Chest.create(params_chest)
    redirect_to chests_path
  end

  def destroy
    
  end


  private
    def params_chest
      params.require(:chest).permit(:title, :content, :video).merge(user_id: current_user.id)
    end
end
