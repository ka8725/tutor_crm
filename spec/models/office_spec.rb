require 'spec_helper'

describe Office do
  context :associations do
    it { should belong_to(:subway) }
    it { should belong_to(:line) }
    it { should have_many(:projects).through(:project_offices) }
  end

  context :validations do
    it { should validate_presence_of(:address) }
  end
end
