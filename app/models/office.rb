class Office < ActiveRecord::Base
  validates :address, :presence => true

  belongs_to :subway
  belongs_to :line

  has_many :project_offices, :dependent => :destroy
  has_many :projects, :through => :project_offices
end
