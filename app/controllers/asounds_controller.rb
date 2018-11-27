class AsoundsController < ApplicationController
  before_action :authenticate_user!
  def show
    @asound = Asound.find(params[:id])
  end

  def index
    @q        = Asound.search(params[:q])
    @asounds = @q.result(distinct: true).page(params[:page])

  end

  def new
    @asound = Asound.new

  end

  def create
    asound = Asound.new(asound_params)
    asound.user_id = current_user.id
    asound.save
    redirect_to asounds_path
  end

  def edit
    @asound = Asound.find(params[:id])
  end

  def update
    asound = Asound.find(params[:id])
    asound.update(asound_params)
    redirect_to asounds_path
end

  def destroy
     asound = Asound.find(params[:id])
     asound.destroy
     redirect_to asounds_path
  end



  private
    def asound_params
        params.require(:asound).permit(:a_sound, :a_body, :a_bpm, :a_key, :a_part, :a_likes_count)
    end

end
