class RolesController < ApplicationController
  before_filter :authenticate_user!
  #before_filter :is_super_admin?
  load_and_authorize_resource
  before_filter :load_permissions # call this after load_and_authorize else it gives a cancan error

  def index
    #you dont want to set the permissions for Super Admin.
    @roles = Role.all.keep_if{|i| i.name != "Super Admin"}
  end
 
  def show
    @role = Role.find(params[:id])
    @permissions = @role.permissions
  end
 
  def edit
    @role = Role.find(params[:id])
    #we dont want the Drawing permissions to be displayed.
    #this way u can display only selected models. you can choose which methods u want to display too.
    #@permissions = Permission.all.keep_if{|i| ["Item"].include? i.subject_class}.compact
    @permissions = Permission.all
    @role_permissions = @role.permissions.collect{|p| p.id}
  end
 
  def update
    @role = Role.find(params[:id])
    @role.permissions = []
    @role.set_permissions(params[:permissions]) if params[:permissions]
    #require 'debugger'; debugger
    if @role.save
      redirect_to roles_path and return
    end
    #@permissions = Permission.all.keep_if{|i| ["Item"].include? i.subject_class}.compact
    @permissions = Permission.all
    render 'edit'
  end
 
  private
 
  def is_super_admin?
    redirect_to dashboard_index_path and return unless current_user == "Admin"
  end

end


