class AddHabtmRace < ActiveRecord::Migration
  def up
    add_column :contacts, :mobile_phone, :string
    add_column :contacts, :no_center, :boolean
    add_column :contacts, :show_me_in_web_directory, :boolean
    add_column :contacts, :show_me_in_print_directory, :boolean
    remove_column :contacts, :race_ethnicity_id
    create_table :contacts_race_ethnicities do |t|
      t.belongs_to :contact
      t.belongs_to :race_ethnicity
    end
  end

  def down
    remove_column :contacts, :mobile_phone
    remove_column :contacts, :no_center
    remove_column :contacts, :show_me_in_web_directory
    remove_column :contacts, :show_me_in_print_directory
    add_column :contacts, :race_ethnicity_id, :integer
    drop_table :contacts_race_ethnicities
  end
end
