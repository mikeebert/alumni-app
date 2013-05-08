require 'spec_helper'
require 'models/user_grad_class'

describe UserGradClass do
  
  it "sets a user_id" do
    @user_grad_class = UserGradClass.new(:user_id => "1")
    @user_grad_class.user_id.should == "1"
  end
  
  it "sets a grad_class_id" do
    @user_grad_class = UserGradClass.new(:grad_class_id => "1")
    @user_grad_class.grad_class_id.should == "1"
  end

end