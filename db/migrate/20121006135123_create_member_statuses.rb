class CreateMemberStatuses < ActiveRecord::Migration
  def change
    create_table :member_statuses do |t|
      t.string :name
      t.timestamps
    end
  end
end
