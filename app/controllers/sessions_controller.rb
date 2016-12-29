class SessionsController < ApplicationController
  def create
  	unless session[:user_id]
	    user = User.find_by_email(params[:email])
	    # If the user exists AND the password entered is correct.
	    if user && user.authenticate(params[:password])
	      # Save the user id inside the browser cookie. This is how we keep the user 
	      # logged in when they navigate around our website.
	      session[:user_id] = user.id
	      @result[:data] = user
	      @result[:status_code] = 200
	      @result[:success_message] = "You have successfully logged in..!!"
	    else
	    # If user's login doesn't work, send them back to the login form.
	      @result[:data] = nil
	      @result[:status_code] = 400
	      @result[:error_messages] = 'Invalid credentails'
	    end
	   else
	   		@result[:status_code] = 400
	     	@result[:error_messages] = 'You have already logged in..!!'
	   end
    render json: @result
  end

  def destroy
  	if session[:user_id]
	    session[:user_id] = nil
	    @result[:success_message] = 'You have successfully logged out'
	    @result[:status_code] = 200
	  else
	  	@result[:error_messages] = 'Somethig went wrong, tryig to logout, without login!!'
	  	@result[:status_code] = 400
	  end
    render json: @result
  end

end
