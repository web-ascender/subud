require "uri"
require "net/http"

class AccessController < ApplicationController
  def index
    username = params[:username]
    userid = params[:userid]
    email = params[:email]

    user = AdminUser.where(:dnn_username => username, :dnn_id => userid) if username && userid
    if user
      # Found, Login & Redirect
      scope = Devise::Mapping.find_scope!('admin_user')
      sign_in user
      #redirect_to admin_user_session_path
      
    else
      # Create, Login & Redirect
      redirect_to "/", :notice => "Not authenticated"
    end        
  end
end
