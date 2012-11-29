class DiscoverInfoHabtm < ActiveRecord::Migration
  def up  
    Contact.update_all(:show_me_in_web_directory => true, :show_me_in_print_directory => true)
    remove_column :contacts, :discover_info_id
    create_table :contacts_discover_infos do |t|
      t.belongs_to :contact
      t.belongs_to :discover_info
    end
  end

  def down
    add_column :contacts, :discover_info_id, :integer
    drop_table :contacts_discover_infos
  end
end
