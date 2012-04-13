require 'spec_helper'

describe Country do
  let(:country) {create(:country)}

  it {country.should be_persisted}
end
