class AddLngToPin < ActiveRecord::Migration
  def change
    add_column :pins, :lng, :decimal
  end
end
