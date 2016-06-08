class FavoriteController < ApplicationController

	def new
		@image = Image.find params[:id]
		@add_favorite = Favorite.new
	end

	def create
		if current_user.coin >= 1
			@image = Image.find params[:id]
			
			@add_favorite = Favorite.create(favorite_params)
			@add_favorite.user_id = current_user.id
			@add_favorite.image_id = @image.id
			#@add_favorite.save 

			@owner = User.find_by id: @image.user_id
			@owner.coin = @owner.coin + 1
			# @owner.save

			current_user.coin = current_user.coin - 1	
			#current_user.save

			@image.favorite = @image.favorite + 1
			#@image.save

			if @add_favorite.save && @owner.save && current_user.save && @image.save
				redirect_to user_path(current_user.id)	
			else
				render :new
			end
		else
			render :new
		end
	end

	def destroy
		@favorite = Favorite.find params[:id]
		@favorite.delete

		redirect_to user_path(current_user.id)
	end

	private 
	def favorite_params
		params.require(:favorite).permit(:user_id, :image_id);
	end

end