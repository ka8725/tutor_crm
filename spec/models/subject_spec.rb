# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Subject do
  let(:subject) { FactoryGirl.create(:subject, :name => 'математика') }

  context :associations do
    it { should belong_to(:subject_category) }
    it { should have_many(:project_subjects) }
    it { should have_many(:projects) }
  end

  context :validations do
    it { should validate_presence_of(:name) }
  end

  context :yandex_inflection do
    it { subject.genitive_name.should == 'математике' }
  end

  context :slug do
    let(:slug_to_change) { 'mathematica1' }
    it { subject.slug.should == 'matematika' }
    it { expect { subject.update_attributes(:slug => slug_to_change, :name => subject.name) }.to
                  change(subject, :slug).to(slug_to_change) }
  end
end
