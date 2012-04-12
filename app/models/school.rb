class School < ActiveRecord::Base
  validates :name, :presence => true

  has_many :project_schools, :dependent => :destroy
  has_many :projects, :through => :project_schools
end
