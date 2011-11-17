require 'spec_helper'

describe Test do
  let(:test) do
    Test.new
  end

  before(:each) do
    MyService.stub(:something) { 2 }
  end

  context "when testing" do
  	it "should test" do
  		test.testing.should eql("test")
  	end
  end

  context "when doing something" do
    it "should do something" do
      test.something.should eql(2)
    end

    it "should use myservice to do something" do
      MyService.should_receive(:something).with(no_args()).once

      test.something
    end
  end
end