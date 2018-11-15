class PsoundsController < ApplicationController
  def show
  end

def index
    @psounds = Psound.all
  end

  def new
    @psound = Psound.new

  end

  def create
    psound = Psound.new(psound_params)
    psound.save
    redirect_to psounds_path
  end

  def edit
  end

  def update
  end

  def destroy
     psound = Psound.find(params[:id])
     psound.destroy
     redirect_to psounds_path
  end



  private
    def psound_params
        params.require(:psound).permit(:p_sound, :p_body, :p_bpm, :p_key, :p_part, :p_likes_count)
    end
end
