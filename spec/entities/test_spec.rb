require 'spec_helper'

describe RspecWithoutRails::Test do
  let(:test) do
    RspecWithoutRails::Test.new
  end

  before(:each) do
    RspecWithoutRails::MyService.stub(:something) { 2 }
  end

  context "when testing" do
  	it "should test" do
  		test.testing.should == "test"
  	end
  end

  context "when doing something" do

    it "should do something" do
      test.something.should be(2)
    end

    it "should use myservice to do something" do
      RspecWithoutRails::MyService.should_receive(:something).with(no_args()).once

      test.something
    end
  end
end