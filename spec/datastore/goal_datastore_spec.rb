require 'datastore/goal'
require 'models/goal'

describe Datastore::Goal do

  

  it "saves a Goal object with an id" do
    datastore = Datastore::Goal.new
    goal = Goal.new

    datastore.save(goal)

    datastore.records[1].should == goal
    goal.id.should == 1
  end

  it "saves two Goals with different ids" do
    datastore = Datastore::Goal.new
    goal1 = Goal.new
    goal2 = Goal.new

    datastore.save(goal1)
    datastore.save(goal2)

    datastore.records.map { |k, v| k }.uniq.length.should == 2
    
  end
  
  it "returns all users" do
    datastore = Datastore::Goal.new
    goal = Goal.new
    goal2 = Goal.new

    datastore.save(goal)
    datastore.save(goal2)

    datastore.all.should == [goal, goal2]
  end
end
