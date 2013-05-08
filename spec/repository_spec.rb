require 'spec_helper'
require 'repository'
require 'datastore/user'

describe Repository do
  it "should register a repo" do
    datastore = Datastore::User.new
    Repository.register(:user, datastore)
    Repository.for(:user).should == datastore
  end


end
