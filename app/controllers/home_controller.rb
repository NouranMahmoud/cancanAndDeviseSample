class HomeController < ApplicationController
 #before_filter :authenticate_user!
 #current_user
 #load_and_authorize_resource
#before_filter :load_permissions # call this after load_and_authorize else it gives a cancan error

 def index
		if user_signed_in?
			redirect_to :controller => 'dashboard', :action => 'index'
		end
	end
end
