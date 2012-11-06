# == Schema Information
#
# Table name: contacts
#
#  id                                                     :integer          not null, primary key
#  first_name                                             :string(255)
#  last_name                                              :string(255)
#  address                                                :string(255)
#  suite                                                  :string(255)
#  city                                                   :string(255)
#  state                                                  :string(255)
#  zip                                                    :string(255)
#  home_phone                                             :string(255)
#  work_phone                                             :string(255)
#  fax_number                                             :string(255)
#  email                                                  :string(255)
#  birth_date                                             :string(255)
#  help_status_id                                         :integer
#  martial_status_id                                      :integer
#  opening_date                                           :string(255)
#  sex_id                                                 :integer
#  member_status_id                                       :integer
#  date_of_info                                           :string(255)
#  created_at                                             :datetime         not null
#  updated_at                                             :datetime         not null
#  help_statustype_id                                     :integer
#  skype                                                  :string(255)
#  twitter                                                :string(255)
#  facebook_url                                           :string(255)
#  website_url                                            :string(255)
#  region_id                                              :integer
#  i_am_the_contact_person_for_information_in_this_region :boolean          default(FALSE)
#  i_am_the_contact_helper_for_information_in_this_region :boolean          default(FALSE)
#  center_id                                              :integer
#  i_am_the_contact_person_for_information_in_this_center :boolean          default(FALSE)
#  i_am_the_contact_helper_for_information_in_this_center :boolean          default(FALSE)
#  committee_role_id                                      :integer
#  committee_level_id                                     :integer
#  enterprise_name                                        :string(255)
#  business                                               :boolean          default(FALSE)
#  ses_professional_classification_id                     :integer
#  sica_professional_classification_id                    :integer
#  spouse_name                                            :string(255)
#  spouse_opened                                          :boolean          default(FALSE)
#  center_opened_at_id                                    :integer
#  helper_witness                                         :string(255)
#  discover_info_id                                       :integer
#  national_helper_id                                     :integer
#  help_level_id                                          :integer
#  mobile_phone                                           :string(255)
#  no_center                                              :boolean
#  show_me_in_web_directory                               :boolean
#  show_me_in_print_directory                             :boolean
#

class Contact < ActiveRecord::Base
  attr_protected :id
  belongs_to :martial_status
  belongs_to :member_status
  belongs_to :help_status
  belongs_to :sex
  belongs_to :help_statustype
  belongs_to :center
  belongs_to :committee_level
  belongs_to :committee_role
  belongs_to :discover_info
  belongs_to :national_helper
  belongs_to :race_ethnicity
  belongs_to :region
  belongs_to :ses_professional_classification
  belongs_to :sica_professional_classification
  belongs_to :center_opened_at, :class_name => "Center"
  belongs_to :help_level
  belongs_to :admin_user
  has_and_belongs_to_many :communication_services
  has_and_belongs_to_many :race_ethnicities
  validate :center_validation
  has_paper_trail

  def center_validation
    if self.center && self.center.name.include?("--")
      errors.add(:center, "Sorry you cannot select that Center")
    end
    if self.center_opened_at && self.center_opened_at.name.include?("--")
      errors.add(:center, "Sorry you cannot select that Center")
    end

  end
  def name
    if self.last_name && self.first_name
      self.last_name + ", " + self.first_name
    else
      ""
    end
  end
  def to_s
    name
  end
  
end
