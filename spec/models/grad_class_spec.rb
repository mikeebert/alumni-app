require 'spec_helper'
require 'models/grad_class'

describe GradClass do
  
  it "sets a graduation year" do
    @grad_class = GradClass.new(:year => "2013")
    @grad_class.year.should == "2013"
  end

  it "sets a graduation quarter" do
    @grad_class = GradClass.new(:quarter => "spring")
    @grad_class.quarter.should == "spring"
  end

  it "sets a user_id" do
    @grad_class = GradClass.new(:user_id => "Mike")
    @grad_class.user_id.should == "Mike"
  end


end