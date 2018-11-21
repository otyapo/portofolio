class LikesController < ApplicationController
    def create
            gsound = Gsound.find(params[:gsound_id])
            like = current_user.likes.new(gsound_id: gsound.id)
            like.save
            redirect_to gsounds_path
        end
        def destroy
            gsound = Gsound.find(params[:gsound_id])
            like = current_user.likes.find_by(gsound_id: gsound.id)
            like.destroy
            redirect_to gsounds_path
        end
end
