class Project < ActiveRecord::Base
  validates :name, :url, :presence => true, :uniqueness => true
  validates :url, :format => {:with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix}
end
