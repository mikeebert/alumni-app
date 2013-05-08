require 'spec_helper'
require 'models/user'

describe User do
  it "sets a name for a user" do
    @user = User.new(:name => "Testy Testerson")
    @user.name.should == "Testy Testerson"
  end

  it "sets an email for a user" do
    @user = User.new(:email => "test@test.com")
    @user.email.should == "test@test.com"
  end

  

end
