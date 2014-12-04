class RemoveLongitudeFromPin < ActiveRecord::Migration
  def change
    remove_column :pins, :longitude, :decimal
  end
end
