require 'spec_helper'

describe Paywatch do
  it 'should have a version number' do
    Paywatch::VERSION.should_not be_nil
  end

  describe "#env" do
    it { Paywatch.env.should eq 'test' }
  end

  describe "#home" do
    it { Paywatch.home.should eq File.join(Etc.getpwuid.dir, '.paywatch') }
  end
end
