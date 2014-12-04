class ChangeTypeOfDefaultZOom < ActiveRecord::Migration
  def change
  	change_column :boards, :default_zoom, :integer, :default => 4
  end
end
