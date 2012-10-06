class CreateHelpStatuses < ActiveRecord::Migration
  def change
    create_table :help_statuses do |t|
      t.string :name
      t.timestamps
    end
  end
end
