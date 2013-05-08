require 'spec_helper'
require 'models/user'

describe Goal do

  let(:goal) { Goal.new(name: "win", description: "win all the things", user_id: 1)}

  it "sets a name for a goal" do
    goal.name.should == "win"
  end

  it "sets a description for a goal" do
    goal.description.should == "win all the things"
  end

  it "sets a user id for a goal" do
    goal.user_id.should == 1
  end

end
