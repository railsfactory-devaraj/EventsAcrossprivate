class UsersController < ApplicationController
	def create
		user = User.new(user_params)
		if user.save
			@result[:status_code] = 200
			@result[:success_message] = 'You have sucessfully signed up, Please signin to continue!!'
		else
			@result[:error_message] = errors.full_messages.join(',')
			@result[:status_code] = 400 
		end
		render json: @result
	end

	def following_events
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end