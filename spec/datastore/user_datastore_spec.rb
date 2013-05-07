require 'datastore/user'
require 'models/user'

describe Datastore::User do
  it "saves a User object with an id" do
    datastore = Datastore::User.new
    user = User.new

    datastore.save(user)

    datastore.records[1].should == user
    user.id.should == 1
  end

  it "returns all users" do
    datastore = Datastore::User.new
    user = User.new
    user2 = User.new

    datastore.save(user)
    datastore.save(user2)

    datastore.all.should == [user, user2]
  end
end
