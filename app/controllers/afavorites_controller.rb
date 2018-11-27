class AfavoritesController < ApplicationController
	def create
		user = current_user
        asound = Asound.find(params[:asound_id])
        if Afavorite.create(user_id: user.id,asound_id:asound.id)
            redirect_to asounds_path
        else
            redirect_to asounds_path
        end
	end

	def destroy
		user = current_user
		asound = Asound.find(params[:asound_id])
        if afavorite = Afavorite.find_by(user_id: user.id,asound_id:asound.id)
            afavorite.delete
            redirect_to asounds_path
        else
            redirect_to asounds_path
        end
	end
end
