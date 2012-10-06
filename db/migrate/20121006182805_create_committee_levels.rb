class CreateCommitteeLevels < ActiveRecord::Migration
  def change
    create_table :committee_levels do |t|
      t.string :name
      t.timestamps
    end
  end
end
