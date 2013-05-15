require 'datastore/project'
require 'shared_examples/datastore_examples'

describe Datastore::Project do
  let(:datastore_class) { Datastore::Project }
  subject { Datastore::Project.new }
  let(:object) { Project.new }
  let(:another_object) { Project.new }

  before :each do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"

  it "gets a user's projects" do
    subject.find_by_id(1).user_id = 1
    subject.get_user_projects(1).should == [object]
  end
end
