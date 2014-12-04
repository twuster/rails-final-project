class RemovecolumnsfromPin < ActiveRecord::Migration
  def down
  	remove_column :pins, :latitude, :decimal
  	remove_column :pins, :longitude, :decimal
  end
end
