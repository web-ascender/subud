class AddDelegateToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :delegate, :boolean, :default => false
  end
end
