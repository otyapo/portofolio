class PfavoritesController < ApplicationController
	def create
		user = current_user
		psound = Psound.find(params[:psound_id])
        if Pfavorite.create(user_id: user.id,psound_id:psound.id)
        redirect_to psounds_path
        else
        redirect_to psounds_path
        end
	end

	def destroy
		user = current_user
		psound = Psound.find(params[:psound_id])
        if pfavorite = Pfavorite.find_by(user_id: user.id,psound_id:psound.id)
        pfavorite.delete
        redirect_to psounds_path
        else
        redirect_to psounds_path
        end
	end
end
