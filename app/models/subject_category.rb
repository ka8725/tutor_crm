class SubjectCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :subjects
end
