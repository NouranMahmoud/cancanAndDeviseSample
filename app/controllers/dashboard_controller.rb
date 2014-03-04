class DashboardController < ApplicationController
	before_filter :authenticate_user!
	#current_user
	#load_and_authorize_resource
	before_filter :load_permissions # call this after load_and_authorize else it gives a cancan error

	def index
		#@item = current_user.items
		#redirect_to :controller => 'dashboard', :action => 'show'
	end
	def show
		#redirect_to :controller => 'item', :action => 'index'
		
	end
end
