class CreateProjectOffices < ActiveRecord::Migration
  def change
    create_table :project_offices do |t|
      t.integer :project_id
      t.integer :office_id

      t.timestamps
    end
  end
end
