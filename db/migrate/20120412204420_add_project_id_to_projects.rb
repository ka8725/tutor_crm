class AddProjectIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_type_id, :integer
  end
end
