class Line < ActiveRecord::Base
  validates :name, :presence => true
  has_many :project_lines, :dependent => :destroy
  has_many :projects, :through => :project_lines
  has_many :offices, :dependent => :nullify
end
