class City < ActiveRecord::Base
  belongs_to :country
  has_many :projects

  has_many :city_lines, :dependent => :destroy
  has_many :lines, :through => :city_lines

  validates :name, :country, :presence => true
end
