# == Schema Information
#
# Table name: committee_roles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommitteeRole < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name
  has_many :contacts
end