class AddSuperuserToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :superuser, :boolean, :default => false
  end
end
