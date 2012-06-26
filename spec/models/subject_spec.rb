# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Subject do
  context :associations do
    it { should belong_to(:subject_category) }
    it { should have_many(:project_subjects) }
    it { should have_many(:projects) }
  end

  context :validations do
    it { should validate_presence_of(:name) }
  end

  context :yandex_inflection do
    let(:subject) { FactoryGirl.create(:subject, :name => 'математика') }

    it { subject.genitive_name.should == 'математике' }
  end
end
