require "uri"
require "net/http"

class AccessController < ApplicationController
  def index
    @username = params[:username]
    @userid = params[:userid]
    @email = params[:email]
    @password = "subudsecret"

    user = AdminUser.where(:dnn_username => @username, :dnn_id => @userid).first if @username && @userid

    if user
      @email = user.email      
      
    else
      au = AdminUser.create!(:email => @email, :password => @password, :dnn_username => @username, :dnn_id => @userid)
      # Create, Login & Redirect
      #redirect_to "/", :notice => "Not authenticated"
    end        
  end
end
