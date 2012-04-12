class ProjectOffice < ActiveRecord::Base
  belongs_to :project
  belongs_to :office

  validates :project, :office, :presence => true
end
