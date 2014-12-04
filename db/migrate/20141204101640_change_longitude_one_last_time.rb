class ChangeLongitudeOneLastTime < ActiveRecord::Migration
  def change
  	change_column :boards, :longitude, :float, :default => "-122.25854"
  end
end
