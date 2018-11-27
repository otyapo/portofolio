class AlikesController < ApplicationController
	def create
		asound = Asound.find(params[:asound_id])
        alike = current_user.alikes.new(asound_id: asound.id)
        alike.save
        redirect_to asounds_path
	end

	def destroy
		asound = Asound.find(params[:asound_id])
        alike = current_user.alikes.find_by(asound_id: asound.id)
        alike.destroy
        redirect_to asounds_path
	end

end
