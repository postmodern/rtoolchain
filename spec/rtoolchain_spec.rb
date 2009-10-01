require 'rtoolchain/version'

require 'spec_helper'

describe RToolchain do
  it "should define a VERSION constant" do
    RToolchain.const_defined?('VERSION').should == true
  end
end
