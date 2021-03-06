class Subject < ActiveRecord::Base
  validates :name, :presence => true

  has_many :project_subjects, :dependent => :destroy
  has_many :projects, :through => :project_subjects
  belongs_to :subject_category

  extend FriendlyId
  friendly_id :name, :use => :slugged

  def ablative_name
    @ablative_name ||= YandexInflect.inflections(name)[2]
  end

  def normalize_friendly_id(text)
    text.to_slug.normalize!(:transliterations => :russian) if text.present?
  end
end
