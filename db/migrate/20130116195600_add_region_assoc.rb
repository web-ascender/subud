class AddRegionAssoc < ActiveRecord::Migration
  def up
    RegionAssociation.create(name: "I am the contact person for information in this region")
    RegionAssociation.create(name: "I am the contact helper for information in this region")
    RegionAssociation.create(name: "I am the contact person for information in this center")
    RegionAssociation.create(name: "I am the contact helper for information in this center")
  end

  def down
  end
end
