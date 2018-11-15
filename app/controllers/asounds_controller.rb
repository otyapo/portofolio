class AsoundsController < ApplicationController
  def show
  end

  def index
    @asounds = Asound.all
  end

  def new
    @asound = Asound.new

  end

  def create
    asound = Asound.new(asound_params)
    asound.save
    redirect_to asounds_path
  end

  def edit
  end

  def update
  end

  def destroy
     asound = Asound.find(params[:id])
     asound.destroy
     redirect_to asounds_path
  end



  private
    def gsound_params
        params.require(:asound).permit(:a_sound, :a_body, :a_bpm, :a_key, :a_part, :a_likes_count)
    end
end

