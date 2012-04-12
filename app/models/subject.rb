class Subject < ActiveRecord::Base
  validates :name, :presence => true

  has_many :project_subjects, :dependent => :destroy
  has_many :projects, :through => :project_subjects
end
