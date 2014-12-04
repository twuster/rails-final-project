class AddFullViewLatLongToBoard < ActiveRecord::Migration
  def change
  	add_column :boards, :full_view_latitude, :float, :default => "42.5"
  	add_column :boards, :full_view_longitude, :float, :default => "-80.35"
  end
end
