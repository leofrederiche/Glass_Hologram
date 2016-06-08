class ImagesController < ApplicationController

	def new
		@new_img = Image.new
	end

	def create
		if current_user.coin >= 5
			@new_img = Image.create(images_params)
			@new_img.user_id = current_user.id	

			current_user.coin = current_user.coin - 5;


			if @new_img.save && current_user.save
				redirect_to user_path(current_user.id)
			else
				render :new
			end
		else
			redirect_to user_path(current_user.id)
		end
	end

	def destroy
		@image = Image.find params[:id]
		@image.delete

		current_user.coin = current_user.coin + 3

		redirect_to user_path(current_user.id)
	end

	private
	def images_params
		params.require(:image).permit(:user_id, :picture)
	end

end