class ProjectLine < ActiveRecord::Base
  belongs_to :project
  belongs_to :line

  validates :project, :line, :presence => true
end
