class AddHelpstatustypeToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :help_statustype_id, :integer
  end
end
