class AddUserIdToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :dnn_id, :integer
    add_column :admin_users, :dnn_username, :string    
  end
end
