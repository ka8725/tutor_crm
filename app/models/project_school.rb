class ProjectSchool < ActiveRecord::Base
  belongs_to :project
  belongs_to :school
end
