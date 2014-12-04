class AddLatitideToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :latitude, :float
  end
end
