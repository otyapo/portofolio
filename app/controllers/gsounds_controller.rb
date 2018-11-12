class GsoundsController < ApplicationController
  def show
  end

  def index
    @gsounds = Gsound.all
  end

  def new
    @gsound = Gsound.new
  end

  def create
    @gsound = Gsound.new(gsound_params)
    @g_sound.save
    redirect_to gsounds_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
