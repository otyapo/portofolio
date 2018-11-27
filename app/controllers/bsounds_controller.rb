class BsoundsController < ApplicationController
  before_action :authenticate_user!
  def show
    @bsound = Bsound.find(params[:id])
  end

  def index
    @q        = Bsound.search(params[:q])
    @bsounds = @q.result(distinct: true).page(params[:page])

  end

  def new
    @bsound = Bsound.new

  end

  def create
    bsound = Bsound.new(bsound_params)
    bsound.user_id = current_user.id
    bsound.save
    redirect_to bsounds_path
  end

  def edit
    @bsound = Bsound.find(params[:id])
  end

  def update
    bsound = Bsound.find(params[:id])
    bsound.update(bsound_params)
    redirect_to bsounds_path
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
