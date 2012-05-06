require 'spec_helper'

describe CityLine do
  context :associations do
    it { should belong_to(:city) }
    it { should belong_to(:line) }
  end
end
