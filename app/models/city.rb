class City < ActiveRecord::Base
  belongs_to :country
  has_many :projects

  validates :name, :country, :presence => true
end
