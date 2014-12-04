class RemoveLongitudeLatitudeFromPin < ActiveRecord::Migration
  def down
  	remove_column :pins, :longitude 
  	remove_column :pins, :latitude
  end
end
