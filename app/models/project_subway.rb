class ProjectSubway < ActiveRecord::Base
  belongs_to :project
  belongs_to :subway

  validates :project, :subway, :presence => true
end
