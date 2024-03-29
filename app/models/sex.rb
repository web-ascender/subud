# == Schema Information
#
# Table name: sexes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sex < ActiveRecord::Base
  attr_accessible :name
  has_many :contacts
  def to_s
    name
  end
end
