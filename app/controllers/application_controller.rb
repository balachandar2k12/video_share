class ApplicationController < ActionController::Base
  protect_from_forgery
   def require_login
    if !user_signed_in?
      # if(params[:controller]!="home")
			   redirect_to "/users/sign_in", :flash => { :notice => "Please Login" }
      # end
			return false
		#elsif (current_user.name.nil? or current_user.name.empty? ) && ( params[:action]!="settings" && params[:controller]!="users")
			#redirect_to user_profile_path ,:flash => {:notice => 'Update your Name'}
			#return false
    end
		#true
  end
end
