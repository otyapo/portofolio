class PlikesController < ApplicationController
	def create
		psound = Psound.find(params[:psound_id])
        plike = current_user.plikes.new(psound_id: psound.id)
        plike.save
        redirect_to psounds_path
	end

	def destroy
		psound = Psound.find(params[:psound_id])
        plike = current_user.plikes.find_by(psound_id: psound.id)
        plike.destroy
        redirect_to psounds_path
	end

end

