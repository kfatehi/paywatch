require 'spec_helper'

describe Paywatch::Api do
  let(:app) { Paywatch::Api }
  subject { last_response }

  shared_examples_for "a page" do
    it { should be_ok }
    it { subject.body.should match /Home/ }
  end

  describe "index" do
    before { get '/' }
    it_behaves_like "a page"
    it { subject.body.should match /Configure/ }
  end

  describe "configure" do
    describe "GET /configure" do
      before { get '/configure' }
      it_behaves_like "a page"
      it { subject.body.should match /Projects/ }
    end

    describe "create project" do
      before do
        post '/configure/projects', {name: "Paywatch, Inc."}
      end
      it "creates a project" do
        Project.all.should have(1).item
      end
    end
  end
end
