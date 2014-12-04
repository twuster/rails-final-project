class ChangeColumnInPins < ActiveRecord::Migration
	def change
		rename_column :pins, :user_id, :board_id
	end
end
