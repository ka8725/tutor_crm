require 'spec_helper'

describe City do
  context :associations do
    it { should belong_to(:country) }
    it { should have_many(:lines).through(:city_lines) }
    it { should have_many(:lines).through(:city_lines) }
    it { should have_many(:projects) }
  end

  context :validations do
    it { should validate_presence_of(:name) }
  end
end
