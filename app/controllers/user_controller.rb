class UserController < ApplicationController
	def create
		render :json => '{"result":"User created successfully!"}'
	end

	def destroy
		render :json => '{"result":"User removed successfully"}'
	end

	def update
		render :json => '{"result":"Thanks for the update!"}'
	end

	def user_check
		user_check = User.where(username: params[:username]).first
		if user_check == nil
			render :json => '{"result":"none"}'
		else
			render :json => '{"result":"found"}'
		end
	end
end
