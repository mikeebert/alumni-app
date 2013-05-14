require 'spec_helper'
require 'models/user_grad_class'

describe UserGradClass do
  it "initializes with user_id and class_id" do
    user_grad_class = UserGradClass.new(:user_id => 1, :class_id => 2)
    user_grad_class.user_id.should == 1
    user_grad_class.class_id.should == 2
  end
end
