class FavoritesController < ApplicationController
    

    def index
      @user = current_user
      @favorites = Favorite.where(user_id: @user.id).all
    end


    def create
    user = current_user
    gsound = Gsound.find(params[:gsound_id])
    if Favorite.create(user_id: user.id,gsound_id:gsound.id)
    redirect_to gsounds_path
    else
      redirect_to gsounds_path
    end

end



  def destroy
    user = current_user
    gsound = Gsound.find(params[:gsound_id])
    if favorite = Favorite.find_by(user_id: user.id,gsound_id:gsound.id)
      favorite.delete
      redirect_to gsounds_path
    else
      redirect_to gsounds_path
    end

end





end