require 'spec_helper'

describe Paywatch::Api do
  let(:app) { Paywatch::Api }
  subject { last_response }

  describe 'views' do
    shared_examples_for "a view" do
      it { should be_ok }
      it { subject.body.should match /Home/ }
    end

    describe "GET /" do
      before { get '/' }
      it_behaves_like "a view"
      it { subject.body.should match /Configure/ }
    end

    describe "GET /configure" do
      before { get '/configure' }
      it_behaves_like "a view"
      it { subject.body.should match /Projects/ }
    end
  end

  describe "project API" do
    before do
      post '/projects', project:{name: "Paywatch, Inc."}
    end
    it "creates a project" do
      Project.all.should have(1).item
    end
  end
end
