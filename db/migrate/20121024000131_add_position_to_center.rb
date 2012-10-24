class AddPositionToCenter < ActiveRecord::Migration
  def up
    add_column :centers, :position, :integer
    Center.order("id asc").all.each{|c| c.position=c.id*10;c.save;}
  end

  def down
    remove_column :centers, :position
  end
end
