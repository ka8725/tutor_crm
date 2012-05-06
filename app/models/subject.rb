class Subject < ActiveRecord::Base
  validates :name, :presence => true

  has_many :project_subjects, :dependent => :destroy
  has_many :projects, :through => :project_subjects
  belongs_to :subject_category

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
