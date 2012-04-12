class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :address
      t.integer :subway_id
      t.integer :line_id

      t.timestamps
    end
  end
end
