class Subway < ActiveRecord::Base
  belongs_to :line
  has_many :project_subways, :dependent => :destroy
  has_many :projects, :through => :project_subways
  has_many :offices, :dependent => :nullify

  validates :name, :presence => true
end
