# == Schema Information
#
# Table name: member_statuses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MemberStatus < ActiveRecord::Base
  attr_accessible :name
  has_many :contacts

  def to_s
    self.name
  end

end
