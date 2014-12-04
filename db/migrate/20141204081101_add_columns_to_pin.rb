class AddColumnsToPin < ActiveRecord::Migration
  def up
  	add_column :pins, :lat, :decimal, {:precision=>10, :scale=>6}
	add_column :pins, :lng, :decimal, {:precision=>10, :scale=>6}
  end
end
