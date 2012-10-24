class CreateHelpLevels < ActiveRecord::Migration
  def change
    create_table :help_levels do |t|
      t.string :name
      t.timestamps
    end

    add_column :contacts, :help_level_id, :integer
  end
end
