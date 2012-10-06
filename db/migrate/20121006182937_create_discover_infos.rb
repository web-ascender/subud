class CreateDiscoverInfos < ActiveRecord::Migration
  def change
    create_table :discover_infos do |t|
      t.string :name
      t.timestamps
    end
  end
end
