class GsoundsController < ApplicationController

  def show
    @gsound = Gsound.find(params[:id])
  end

  def index
    @gsounds = Gsound.all
  end

  def new
    @gsound = Gsound.new

  end

  def create
    gsound = Gsound.new(gsound_params)
    gsound.user_id = current_user.id
    gsound.save
    redirect_to gsounds_path
  end

  def edit
    @gsound = Gsound.find(params[:id])
  end

  def update
    gsound = Gsound.find(params[:id])
    gsound.update(gsound_params)
    redirect_to gsounds_path
  end

  def destroy
     gsound = Gsound.find(params[:id])
     gsound.destroy
     redirect_to gsounds_path
  end



  private
    def gsound_params
        params.require(:gsound).permit(:g_sound, :g_body, :g_bpm, :g_key, :g_part, :g_likes_count)
    end

end
