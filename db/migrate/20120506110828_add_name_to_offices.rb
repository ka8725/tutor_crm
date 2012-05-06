class AddNameToOffices < ActiveRecord::Migration
  def change
    add_column :offices, :name, :string
  end
end
