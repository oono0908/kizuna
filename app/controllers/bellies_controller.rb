class BelliesController < ApplicationController
  def index
    @belly = Belly.new
    @bellies = Belly.all
    end

  def create
    Belly.create(params_belly)
    redirect_to bellies_path
  end

  def destroy
    
  end


  private
    def params_belly
      params.require(:belly).permit(:title, :content, :video).merge(user_id: current_user.id)
    end
end
