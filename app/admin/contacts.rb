ActiveAdmin.register Contact do
  
index do
  column :id do |contact|
    contact.id
  end
  column :name do |contact|
    link_to contact.first_name+" "+contact.last_name, admin_contact_path(contact)
  end
  column :city do |contact|
    contact.city
  end
  column :state do |contact|
    contact.state
  end
  column :zip do |contact|
    contact.zip
  end
  column :status do |contact|
    contact.member_status
  end  
  default_actions
end
end
