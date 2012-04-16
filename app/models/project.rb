class Project < ActiveRecord::Base
  belongs_to :project_type
  belongs_to :country
  belongs_to :city

  has_many :project_subways, :dependent => :destroy
  has_many :subways, :through => :project_subways

  has_many :project_lines, :dependent => :destroy
  has_many :lines, :through => :project_lines

  has_many :project_offices, :dependent => :destroy
  has_many :offices, :through => :project_offices

  has_many :project_schools, :dependent => :destroy
  has_many :schools, :through => :project_schools

  has_many :project_schools, :dependent => :destroy
  has_many :schools, :through => :project_schools

  has_many :project_subjects, :dependent => :destroy
  has_many :subjects, :through => :project_subjects

  validates :name, :url, :presence => true, :uniqueness => true
  validates :city, :country, :project_type, :presence => true
  validates :url, :format => {:with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix}
end
