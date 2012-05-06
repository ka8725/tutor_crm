class CityLine < ActiveRecord::Base
  attr_accessible :city_id, :line_id

  belongs_to :city
  belongs_to :line
end
