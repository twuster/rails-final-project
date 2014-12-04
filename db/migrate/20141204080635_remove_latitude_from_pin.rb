class RemoveLatitudeFromPin < ActiveRecord::Migration
  def change
    remove_column :pins, :latitude, :decimal
  end
end
