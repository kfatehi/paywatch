require 'spec_helper'

describe Paywatch do
  it 'should have a version number' do
    Paywatch::VERSION.should_not be_nil
  end
end
