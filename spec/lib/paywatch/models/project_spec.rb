require 'spec_helper'
require 'paywatch/models/project'

describe Project do
  describe "#all" do
    subject { Project.all }
    it { should be_empty }
  end
end
