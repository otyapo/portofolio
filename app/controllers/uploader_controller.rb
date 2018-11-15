class UploaderController < ApplicationController
  def index
  end

  def form
  end

  def upload
  	@audio_file = AudioFile.new
    @audio_file.save
    redirect_to action: 'index'
  end

  def download
  end


private
    def audio_params
        params.require(:audio_file).permit(:gname, :gfile)
    end

end
