class AddLongitudeToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :longitude, :float
  end
end
