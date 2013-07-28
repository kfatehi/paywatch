require 'spec_helper'

describe Paywatch::GUI do
  let(:app) { Paywatch::GUI }
  before { get path }
  subject { last_response }

  describe "index" do
    let(:path) {'/'}
    it { should be_ok }
    it { subject.body.should match /Configure/ }
  end

  describe "configuration UI" do
    let(:path) {'/configure'}
    it { should be_ok }
  end
end
