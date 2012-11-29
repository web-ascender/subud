class ContactsController < ApplicationController
  def index
    @contacts = Contact.where(:show_me_in_web_directory => true).order("last_name,first_name").page(params[:page]).per(50)
    @centers = Center.all    
  end

  def show
    @contact = Contact.find(params[:id])
  end
end
