require 'spec_helper'

describe Project do
  let(:project) { FactoryGirl.create(:project) }
  let(:blank_project) { Project.new }
  let(:new_project) { FactoryGirl.build(:project) }

  context 'validation' do
    it { project.should be_valid }
    it {
      blank_project.save.should_not be_true
      blank_project.errors.should have_key(:name)
      blank_project.errors.should have_key(:url)
    }
    it {
      new_project.url = Faker::Internet.domain_name
      new_project.save.should_not be_true
      new_project.errors.should have(1).items
      new_project.errors.should have_key(:url)
    }
  end
end
