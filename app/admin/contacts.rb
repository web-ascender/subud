ActiveAdmin.register Contact, {:sort_order => "last_name"} do
  
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

  default_actions
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
