require 'spec_helper'
require 'models/project'

#We are going to make this a prettier model to test Github.

describe Project do
  it "sets a name for a project" do
    @project = Project.new(:name => "Test App")
    @project.name.should == "Test App"
  end

  it "sets an description for a project" do
    @project = Project.new(:description => "This is a new project is going to make us millions!")
    @project.description.should == "This is a new project is going to make us millions!"
  end

  it "sets a user_id for a project" do
    @project = Project.new(:user_id => 101)
    @project.user_id.should == 101
  end

end
