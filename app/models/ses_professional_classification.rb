# == Schema Information
#
# Table name: ses_professional_classifications
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SesProfessionalClassification < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  has_many :contacts
  def to_s
    name
  end

end
