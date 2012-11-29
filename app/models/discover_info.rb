# == Schema Information
#
# Table name: discover_infos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DiscoverInfo < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  has_and_belongs_to_many :contacts
  def to_s
    name
  end
  
end
