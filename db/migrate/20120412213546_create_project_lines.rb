class CreateProjectLines < ActiveRecord::Migration
  def change
    create_table :project_lines do |t|
      t.integer :project_id
      t.integer :line_id

      t.timestamps
    end
  end
end
