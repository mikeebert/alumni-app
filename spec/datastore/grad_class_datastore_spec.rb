require 'datastore/grad_class'
require 'models/grad_class'

describe Datastore::GradClass do
  
  it "saves a GradClass object with an id" do
    datastore = Datastore::GradClass.new()
    grad_class = GradClass.new
  
    datastore.save(grad_class)
  
    datastore.records[1].should == grad_class
  end

  it "returns all GradClass objects" do
    datastore = Datastore::GradClass.new
    grad_class = GradClass.new
    grad_class2 = GradClass.new
  
    datastore.save(grad_class)
    datastore.save(grad_class2)
  
    datastore.all.should == [grad_class, grad_class2]
  end
end