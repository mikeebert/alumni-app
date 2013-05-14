require 'spec_helper'
require 'models/grad_class'

describe GradClass do
  it "initializes with a year and a quarter" do
    grad_class = GradClass.new(:year => 2012, :quarter => "Spring")
    grad_class.year.should == 2012
    grad_class.quarter.should == "Spring"
  end
end
