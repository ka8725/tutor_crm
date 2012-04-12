class Country < ActiveRecord::Base
  has_many :cities
  has_many :projects

  validates :name, :presence => true
end
