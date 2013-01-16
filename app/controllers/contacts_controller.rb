class ContactsController < ApplicationController
  # Disclaimer:
  # This code including all the data import was written in two days.
  # Client budget was small, but wanted to get a decent database set up for them.


  before_filter :custom_auth
  before_filter :contact_permissions, :only => [:edit, :update]
  
  def index

    @existing_contact = Contact.find_by_email(current_user.email)
    @contacts = Contact.where(:show_me_in_web_directory => true).order("last_name,first_name")
    if params[:search].present?
      @s = params[:search]
      @contacts = @contacts.where("first_name ILIKE ?",@s[:first_name]) if @s[:first_name].present?
      @contacts = @contacts.where("last_name ILIKE ?",@s[:last_name]) if @s[:last_name].present?
      @contacts = @contacts.where("region_id = ?",@s[:region]) if @s[:region].present?
      @contacts = @contacts.where("center_id = ?",@s[:center]) if @s[:center].present?
      @contacts = @contacts.where("state = ?",@s[:state]) if @s[:state].present?
    end
    @contacts = @contacts.page(params[:page]).per(50)
    @centers = Center.all    

  end

  def new
    @contact = current_user.contacts.new
    @contact.show_me_in_web_directory = true
  end

  def edit
    @contact = Contact.find(params[:id])    
  end

  def create
    @contact = current_user.contacts.new(params[:contact])

    if @contact.save
      redirect_to :contacts, notice: 'Listing was successfully added.'
    else
      render :new
    end    
  end
  
  def update
    @contact = Contact.find(params[:id])
    @contact.user_id = current_user.id
    if @contact.update_attributes(params[:contact])
      redirect_to :contacts, notice: 'Listing was successfully updated.'
    else
      render :edit
    end

  end

  def show
    @contact = Contact.find(params[:id])
  end

  def contact_permissions
    redirect_to :contacts, :notice => "Sorry, you are unable to edit that listing." unless current_user && current_user.can_edit_contact(Contact.find(params[:id]))
  end

  def custom_auth
    unless current_user
      if params[:user_email].present? and params[:user_id].present? and params[:user_username].present?
        unless @user = User.find_by_user_email_and_user_id_and_user_username(params[:user_email],params[:user_id],params[:user_username])        
          @user = User.create(:email => params[:user_email], :password => "subud_"+params[:user_email],:password_confirmation => "subud_"+params[:user_email], :user_id => params[:user_id], :user_username => params[:user_username], :user_email => params[:user_email])
        end
        sign_in @user
      else
        redirect_to "/", :notice => "Please visit www.subud.org to access the member directory"
      end
    end
  end
end
