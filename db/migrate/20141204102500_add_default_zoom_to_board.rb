class AddDefaultZoomToBoard < ActiveRecord::Migration
  def change  	
  	add_column :boards, :default_zoom, :integer, :default => "4"
  end
end
