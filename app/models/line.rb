class Line < ActiveRecord::Base
  validates :name, :presence => true
  has_many :project_lines, :dependent => :destroy
  has_many :projects, :through => :project_lines
  has_many :offices, :dependent => :nullify

  has_many :city_lines, :dependent => :destroy
  has_many :cities, :through => :city_lines
end
