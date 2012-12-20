class AddUserDetails < ActiveRecord::Migration
  def up
    add_column :users, :user_id, :integer
    add_column :users, :user_username, :string
    add_column :users, :user_email, :string
  end

  def down
    remove_column :users, :user_id
    remove_column :users, :user_username
    remove_column :users, :user_email
  end
end
