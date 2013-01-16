class RegionAssociation < ActiveRecord::Base
  attr_protected :id
  has_and_belongs_to_many :contacts
  # attr_accessible :title, :body
end
