require 'datastore/user_grad_class'
require 'models/user_grad_class'

describe Datastore::UserGradClass do 
  
  it "saves a UserGradClass object with an id" do
    datastore = Datastore::UserGradClass.new
    user_grad_class = UserGradClass.new
  
    datastore.save(user_grad_class)
  
    datastore.records[1].should == user_grad_class
  end 
  
end