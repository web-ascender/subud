# == Schema Information
#
# Table name: martial_statuses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MartialStatus < ActiveRecord::Base
  attr_accessible :name
  has_many :contacts

  def to_s
    self.name
  end

end
