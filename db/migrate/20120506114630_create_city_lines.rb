class CreateCityLines < ActiveRecord::Migration
  def change
    create_table :city_lines do |t|
      t.integer :city_id
      t.integer :line_id

      t.timestamps
    end
  end
end
