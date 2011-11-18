require "spec_helper"

describe RspecWithoutRails::MyService do

  it "should do something" do
    RspecWithoutRails::MyService.something.should be(1)
  end

end