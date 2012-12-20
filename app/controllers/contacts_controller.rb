class ContactsController < ApplicationController
  before_filter :custom_auth
  def index
    @contacts = Contact.where(:show_me_in_web_directory => true).order("last_name,first_name").page(params[:page]).per(50)
    @centers = Center.all    

  end

  def new
    @contact = current_user.contacts.new
  end

  
  def show
    @contact = Contact.find(params[:id])
  end

  def custom_auth
    unless current_user
      if params[:user_email].present? and params[:user_id].present? and params[:user_username].present?
        unless @user = User.find_by_user_email_and_user_id_and_user_username(params[:user_email],params[:user_id],params[:user_username])        
          @user = User.create(:email => params[:user_email], :password => "subud_"+params[:user_email],:password_confirmation => "subud_"+params[:user_email], :user_id => params[:user_id], :user_username => params[:user_username], :user_email => params[:user_email])
        end
        sign_in @user
      end
    end
  end
end
