class ChangeValueofDefaultZoom < ActiveRecord::Migration
  def change  	
  	change_column :boards, :default_zoom, :float, :default => 4.0
  end
end
