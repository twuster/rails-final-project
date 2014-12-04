class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
