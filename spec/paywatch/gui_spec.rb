require 'spec_helper'

describe "Sinatra App" do
  let(:app) { Paywatch::GUI }

  describe "GET /" do
    it "should work" do
      get '/'
      last_response.should be_ok
    end
  end
end
