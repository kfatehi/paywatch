require 'spec_helper'

describe Paywatch::GUI do
  let(:app) { Paywatch::GUI }
  before { get path }
  subject { last_response }

  shared_examples_for "a page" do
    it { should be_ok }
    it { subject.body.should match /Home/ }
  end

  describe "index" do
    let(:path) {'/'}
    it_behaves_like "a page"
    it { subject.body.should match /Configure/ }
  end

  describe "configure" do
    let(:path) {'/configure'}
    it_behaves_like "a page"
    it { subject.body.should match /Projects/ }
  end
end
