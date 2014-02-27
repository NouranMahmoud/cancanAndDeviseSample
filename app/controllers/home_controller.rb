class HomeController < ApplicationController
 #before_filter :authenticate_user!
 #current_user
 def index
		if user_signed_in?
			redirect_to :controller => 'dashboard', :action => 'index'
		end
	end
end
