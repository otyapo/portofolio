class PsoundsController < ApplicationController
  before_action :authenticate_user!
  def show
    @psound = Psound.find(params[:id])
  end

  def index
    @q        = Psound.search(params[:q])
    @psounds = @q.result(distinct: true).page(params[:page])

  end

  def new
    @psound = Psound.new

  end

  def create
    psound = Psound.new(psound_params)
    psound.user_id = current_user.id
    # binding.pry
    psound.save
    redirect_to psounds_path
  end

  def edit
    @psound = Psound.find(params[:id])
  end

  def update
    psound = Psound.find(params[:id])
    psound.update(psound_params)
    redirect_to psounds_path
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
