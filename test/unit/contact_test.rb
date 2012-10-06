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
#  receive_electronic_newsletter                          :boolean
#  receive_hardcopy_newsletter                            :boolean
#  receive_news_from_nat_office                           :boolean
#  participate_in_my_regional_listserv                    :boolean
#  enterprise_name                                        :string(255)
#  business                                               :boolean          default(FALSE)
#  ses_professional_classification_id                     :integer
#  sica_professional_classification_id                    :integer
#  race_ethnicity_id                                      :integer
#  spouse_name                                            :string(255)
#  spouse_opened                                          :boolean          default(FALSE)
#  center_opened_at_id                                    :integer
#  helper_witness                                         :string(255)
#  discover_info_id                                       :integer
#  national_helper_id                                     :integer
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
