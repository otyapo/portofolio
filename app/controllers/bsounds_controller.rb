class BsoundsController < ApplicationController
  def show
  end

  def index
    @bsounds = Bsound.all
  end

  def new
    @bsound = Bsound.new

  end

  def create
    bsound = Bsound.new(bsound_params)
    bsound.save
    redirect_to bsounds_path
  end

  def edit
  end

  def update
  end

  def destroy
     bsound = Bsound.find(params[:id])
     bsound.destroy
     redirect_to bsounds_path
  end



  private
    def bsound_params
        params.require(:bsound).permit(:b_sound, :b_body, :b_bpm, :b_key, :b_part, :b_likes_count)
    end
end
