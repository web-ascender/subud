class CreateMartialStatuses < ActiveRecord::Migration
  def change
    create_table :martial_statuses do |t|
      t.string :name
      t.timestamps
    end
  end
end
