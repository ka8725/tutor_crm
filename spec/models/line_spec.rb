require 'spec_helper'

describe Line do
  context :associations do
    it { should have_many(:projects).through(:project_lines) }
    it { should have_many(:cities).through(:city_lines) }
    it { should have_many(:offices) }
  end

  context :validations do
    it { should validate_presence_of(:name) }
  end
end
