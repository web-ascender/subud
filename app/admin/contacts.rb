ActiveAdmin.register Contact, {:sort_order => "last_name"} do
  
    form do |f|
      f.inputs "Contact Information" do
        f.input :first_name        
        f.input :last_name
        f.input :email
        f.input :home_phone
        f.input :work_phone
        f.input :fax_number
        f.input :skype
        f.input :twitter
        f.input :facebook_url
        f.input :website_url
      end
      f.inputs "Address" do
        f.input :address
        f.input :suite
        f.input :city
        f.input :state, :collection => Contact.us_states
        f.input :zip
      end
      f.inputs "About" do
        f.input :birth_date, :label => "Date of Birth"
        f.input :sex, :label => "Gender", :as => "radio"
        f.input :race_ethnicities, :as => :check_boxes        
        f.input :martial_status
        #f.input :help_status
        f.input :opening_date

        f.input :spouse_name
        f.input :spouse_opened
        f.input :center_opened_at
        f.input :helper_witness

      end
      f.inputs "Center Information" do
        f.input :region
        f.input :center
        f.input :no_center, :label => "I do not belong to a center"        
        f.input :date_of_info
        f.input :help_statustype, :label => "Help Type"
        f.input :help_level, :label => "Help Level"
        f.input :region_associations, :as => :check_boxes

      end
      f.inputs "Preferences" do                
        #f.input :i_am_the_contact_person_for_information_in_this_region
        #f.input :i_am_the_contact_helper_for_information_in_this_region
        #f.input :i_am_the_contact_person_for_information_in_this_center
        #f.input :i_am_the_contact_helper_for_information_in_this_center
        f.input :enterprise_name
        f.input :business
        f.input :ses_professional_classification, :label => "SES Professional Classification"
        f.input :sica_professional_classification, :label => "SICA Professional Classification"
        f.input :discover_infos, :as => :check_boxes
        f.input :communication_services, :as => :check_boxes
        f.input :committee_role
        f.input :committee_level
        f.input :delegate, :label => "Delegate"

      end
      f.inputs "Display Options" do        
        f.input :show_me_in_web_directory, :label => "Show my information in the online directory (name, address, phone, email, affiliate links)"

        f.input :show_me_in_print_directory, :label => "Show my information in the annual print directory (name, address, phone, email, affiliate links)"
      end  

      f.inputs "Administration" do
        f.input :member_status
        f.input :national_helper
        
      end

      f.buttons
    end

index do
  column :id do |contact|
    link_to contact.id, admin_contact_path(contact)
  end
  column "Last Name", :last_name
  column "First Name", :first_name
  column "City", :city
  column "State", :state
  column "Zip", :zip
  column "Status", :member_status

  default_actions if current_admin_user.super_user? 
end

controller do
  def show
      @contact = Contact.find(params[:id])
      @versions = @contact.versions 
      @contact = @contact.versions[params[:version].to_i].reify if params[:version]
      show! #it seems to need this
  end
end
sidebar :Versions, :partial => "layouts/version", :only => :show

#https://github.com/gregbell/active_admin/wiki/Auditing-via-paper_trail-(change-history)
  member_action :history do
    @contact = Contact.find(params[:id])
    @versions = @contact.versions
    render "layouts/history"
  end

end


