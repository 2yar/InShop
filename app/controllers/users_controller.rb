class UsersController < ApplicationController

	before_action :authenticate_user! 
	
	def edit
		@user = User.find(params[:id])
		
	end

	def update
		@user = User.current_user
			if @user.update_attributes( user_params)
				redirect_to(user_path(@user))
			else
				render 'show'				
			end
	end

	def show
		@user = User.find(params[:id])
	end

	
	private


	def user_params
		params.require(:user).permit(:phone, :first_name, :last_name, :notes, :avatar_file)
	end


end
