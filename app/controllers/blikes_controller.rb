class BlikesController < ApplicationController
	def create
		 bsound = Bsound.find(params[:bsound_id])
         blike = current_user.blikes.new(bsound_id: bsound.id)
         blike.save
         redirect_to bsounds_path

	end

	def destroy
		bsound = Bsound.find(params[:bsound_id])
        blike = current_user.blikes.find_by(bsound_id: bsound.id)
        blike.destroy
        redirect_to bsounds_path
	end

end
