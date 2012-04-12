class CreateProjectSubways < ActiveRecord::Migration
  def change
    create_table :project_subways do |t|
      t.integer :project_id
      t.integer :subway_id

      t.timestamps
    end
  end
end
