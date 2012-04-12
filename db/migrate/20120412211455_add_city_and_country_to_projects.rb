class AddCityAndCountryToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :country_id, :integer

    add_column :projects, :city_id, :integer

  end
end
