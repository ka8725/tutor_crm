class ProjectSubject < ActiveRecord::Base
  belongs_to :project
  belongs_to :subject
end
