require 'spec_helper'
require 'paywatch/models/project'

describe Project do
  describe ".all" do
    subject { Project.all }
    it { should be_empty }
  end

  describe ".create" do
    it "makes a new project" do
      Project.create({'name'=>"Project, Inc."})
      require 'pry'; binding.pry
      
      Project.all.should_not be_empty
    end
  end
end
