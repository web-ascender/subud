# == Schema Information
#
# Table name: centers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Center < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name, :position
    has_many :contacts
    default_scope order('position ASC')
end
