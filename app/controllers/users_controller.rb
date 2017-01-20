class UsersController < ApplicationController


	def index
		@users = User.all
	end

	def new
		
	end

	def create
		@user = User.create( user_params )
		
	end

	def edit
		
	end

	def update
		
	end

	def show
		
	end

	def destroy
		
	end
	


	private

	def user_params
		params.require(:user).permit(:avatar_file, :first_name, :last_name, :phone, :notes)
	end


end
