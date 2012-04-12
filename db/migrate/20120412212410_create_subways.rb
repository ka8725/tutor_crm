class CreateSubways < ActiveRecord::Migration
  def change
    create_table :subways do |t|
      t.string :name
      t.integer :line_id

      t.timestamps
    end
  end
end
