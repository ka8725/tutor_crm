class AddFieldsToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :number, :string
    add_column :schools, :address, :string
    add_column :schools, :contact_name, :string
    add_column :schools, :phone1, :string
    add_column :schools, :phone2, :string
    add_column :schools, :email, :string
  end
end
