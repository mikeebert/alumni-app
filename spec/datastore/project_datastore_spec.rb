require 'datastore/project'
require 'models/project'

describe Datastore::Project do
  it "saves a Project object with an id" do
    datastore = Datastore::Project.new
    project = Project.new

    datastore.save(project)

    datastore.records[1].should == project
    project.id.should == 1
  end

  it "returns all projects" do
    datastore = Datastore::Project.new
    project = Project.new
    project2 = Project.new

    datastore.save(project)
    datastore.save(project2)

    datastore.all.should == [project, project2]
  end
end
