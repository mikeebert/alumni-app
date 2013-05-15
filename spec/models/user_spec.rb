require 'spec_helper'
require 'models/user'

describe User do
  before :each do
    @user = User.new(:name => "Testy Testerson",
                     :email => "test@test.com")
  end

  it "sets a name for a user" do
    @user.name.should == "Testy Testerson"
  end

  it "sets an email for a user" do
    @user.email.should == "test@test.com"
  end

  it "has no projects" do
    @user.projects.should == []
  end

  it "has a project" do
    @user.id == 1
    project_datastore = Datastore::Project.new
    project = Project.new(:user_id => 1)
    project_datastore.save(project)
    Repository.register(:project, project_datastore)

    @user.projects.should == [project]
  end

end
