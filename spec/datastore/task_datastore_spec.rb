require 'spec_helper'
require 'datastore/task'
require 'shared_examples/datastore_examples'

describe Datastore::Task do
  let(:datastore_class) { Datastore::Task }
  subject { Datastore::Task.new }
  let(:object) { Task.new }
  let(:another_object) { Task.new }

  before :each do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"

  it "gets a user task" do
  	subject.find_by_id(1).user_id = 1
  	subject.get_user_tasks(1).should == [object]
  end
end

