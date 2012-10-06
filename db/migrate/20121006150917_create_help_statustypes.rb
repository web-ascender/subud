class CreateHelpStatustypes < ActiveRecord::Migration
  def change
    create_table :help_statustypes do |t|
      t.string :name
      t.timestamps
    end
  end
end
