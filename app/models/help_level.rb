# == Schema Information
#
# Table name: help_levels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HelpLevel < ActiveRecord::Base
  attr_accessible :name
  has_many :contacts

  def to_s
    name
  end
  
end
