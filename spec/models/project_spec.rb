require 'spec_helper'

describe Project do
  context :associations do
    it { should belong_to(:project_type) }
    it { should belong_to(:city) }
    it { should belong_to(:country) }
    it { should have_many(:subways).through(:project_subways) }
    it { should have_many(:lines).through(:project_lines) }
    it { should have_many(:offices).through(:project_offices) }
    it { should have_many(:schools).through(:project_schools) }
  end

  context :validations do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:project_type) }

    context :format do
      let(:project) {create(:project)}
      it {
        project.url = 'wrong.url'
        project.save.should_not be_true
        project.errors.should have(1).items
        project.errors.should have_key(:url)
      }
    end

    context :uniqueness do
      before(:each) { create(:project) }
      it { should validate_uniqueness_of(:name) }
      it { should validate_uniqueness_of(:url) }
    end
  end
end
