class CreateRegionAssociations < ActiveRecord::Migration
  def change
    create_table :region_associations do |t|
      t.string :name
      t.timestamps
    end

    create_table :contacts_region_associations do |t|
      t.belongs_to :contact
      t.belongs_to :region_association
    end

  end
end
