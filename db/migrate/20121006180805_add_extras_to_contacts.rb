class AddExtrasToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :skype, :string
    add_column :contacts, :twitter, :string
    add_column :contacts, :facebook_url, :string
    add_column :contacts, :website_url, :string


    add_column :contacts, :region_id, :integer
    add_column :contacts, :i_am_the_contact_person_for_information_in_this_region, :boolean, :default => false
    add_column :contacts, :i_am_the_contact_helper_for_information_in_this_region, :boolean, :default => false
    
    add_column :contacts, :center_id, :integer
    add_column :contacts, :i_am_the_contact_person_for_information_in_this_center, :boolean, :default => false
    add_column :contacts, :i_am_the_contact_helper_for_information_in_this_center, :boolean, :default => false
    
    add_column :contacts, :committee_role_id, :integer
    add_column :contacts, :committee_level_id, :integer

    add_column :contacts, :receive_electronic_newsletter, :boolean
    add_column :contacts, :receive_hardcopy_newsletter, :boolean
    add_column :contacts, :receive_news_from_nat_office, :boolean
    add_column :contacts, :participate_in_my_regional_listserv, :boolean

    add_column :contacts, :enterprise_name, :string
    add_column :contacts, :business, :boolean, :default => false

    add_column :contacts, :ses_professional_classification_id, :integer
    add_column :contacts, :sica_professional_classification_id, :integer

    add_column :contacts, :race_ethnicity_id, :integer
    add_column :contacts, :spouse_name, :string
    add_column :contacts, :spouse_opened, :boolean, :default => false

    add_column :contacts, :center_opened_at_id, :integer
    add_column :contacts, :helper_witness, :string
    add_column :contacts, :discover_info_id, :integer

    add_column :contacts, :national_helper_id, :integer

  end
end
