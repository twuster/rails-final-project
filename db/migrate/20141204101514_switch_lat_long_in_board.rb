class SwitchLatLongInBoard < ActiveRecord::Migration
  def change
  	change_column :boards, :latitude, :float, :default => "37.871899"
  	change_column :boards, :longitude, :float, :default => "122.25854"
  end
end
