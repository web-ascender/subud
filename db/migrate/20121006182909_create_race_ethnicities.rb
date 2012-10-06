class CreateRaceEthnicities < ActiveRecord::Migration
  def change
    create_table :race_ethnicities do |t|
      t.string :name
      t.timestamps
    end
  end
end
