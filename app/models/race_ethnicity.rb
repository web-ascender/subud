# == Schema Information
#
# Table name: race_ethnicities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RaceEthnicity < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name
    has_and_belongs_to_many :contacts
    def to_s
      name
    end
end
