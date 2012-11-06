class ContactsController < ApplicationController
  def index
    @contacts = Contact.page(params[:page]).per(50)
    @centers = Center.all    
  end
end
