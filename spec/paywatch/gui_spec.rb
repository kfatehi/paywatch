require 'spec_helper'

describe "Sinatra App" do
  let(:app) { Paywatch::GUI }

  describe "GET /" do
    it "links to configuration" do
      get '/'
      last_response.should be_ok
      last_response.body.should match /Configuration/
    end
  end
end
