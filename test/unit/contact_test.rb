# == Schema Information
#
# Table name: contacts
#
#  id                :integer          not null, primary key
#  first_name        :string(255)
#  last_name         :string(255)
#  address           :string(255)
#  suite             :string(255)
#  city              :string(255)
#  state             :string(255)
#  zip               :string(255)
#  home_phone        :string(255)
#  work_phone        :string(255)
#  fax_number        :string(255)
#  email             :string(255)
#  birth_date        :string(255)
#  help_status_id    :integer
#  martial_status_id :integer
#  opening_date      :string(255)
#  sex_id            :integer
#  member_status_id  :integer
#  date_of_info      :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
