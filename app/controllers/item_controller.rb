class ItemController < ApplicationController
	before_filter :authenticate_user!
	load_and_authorize_resource
	before_filter :load_permissions # call this after load_and_authorize else it gives a cancan error

	def index
		@item = current_user.items

	end
	##########################
	def new
		@item = Item.new
		@address = Address.new
	end
	#########################
	def create
		
		@item = Item.new(item_params)
		@item.user = current_user
		@item.save
		@address = @item.build_address(address_params)
		@address.save
		redirect_to @item
		
    end
	##########################
	def show
		#params.inspect
		@item = current_user.items.find(params[:id])
	    # @item  = Item.find(params[:id])
	     @address = @item.address
        
	end
	##########################
	def destroy
		@item = Item.find(params[:id])
		@item.delete
		redirect_to Item
	end
	##########################
    def only_hide
        @item = Item.find(params[:id])
        @item.removed = true
        @item.save
        #render :nothing => true
        render :text => "Done!"
    end
    ###########################
	private
	def item_params
		params.require(:item).permit(:listingtype, :price, :purpose, :area, :description, :address_id)
	end
	
	private
	def address_params
		params.require(:address).permit(:country, :city, :community, :subcommunity, :subtype)
	end
end
