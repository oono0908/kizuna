class CalvesController < ApplicationController
  def index
    @calf = Calf.new
    @calves = Calf.all
    end

  def create
    Calf.create(params_belly)
    redirect_to calves_path
  end

  def destroy
    
  end


  private
    def params_belly
      params.require(:calf).permit(:title, :content, :video).merge(user_id: current_user.id)
    end
end
