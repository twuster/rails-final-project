class UpdateDefaultValueofBoardLong < ActiveRecord::Migration
  def change
  	change_column :boards, :latitude, :float, :default => "122.25854"
  end
end
