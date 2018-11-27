class BfavoritesController < ApplicationController
	def create
		user = current_user
		bsound = Bsound.find(params[:bsound_id])
        if Bfavorite.create(user_id: user.id,bsound_id:bsound.id)
        redirect_to bsounds_path
        else
        redirect_to bsounds_path
        end
	end

	def destroy
		user = current_user

        bsound = Bsound.find(params[:bsound_id])
        if bfavorite = Bfavorite.find_by(user_id: user.id,bsound_id:bsound.id)
        bfavorite.delete
        redirect_to bsounds_path
        else
        redirect_to bsounds_path
        end
	end
end
