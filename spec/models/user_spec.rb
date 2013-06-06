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
    project_datastore = Datastore::Project.new
    project = Project.new(:user_id => 1)
    project_datastore.save(project)
    Repository.register(:project, project_datastore)

    @user.projects.should == [project]
  end

  it "has no goals" do
    @user.goals.should == []
  end

  it "has a goal" do
    goal_datastore = Datastore::Goal.new
    goal = Goal.new(:user_id => 1)
    goal_datastore.save(goal)
    Repository.register(:goal, goal_datastore)

    @user.goals.should == [goal]
  end

  it "has no skills" do
    @user.skills.should == []
  end

  it "has a skill" do
    @user.id == 1
    skill_datastore = Datastore::Skill.new
    skill = Skill.new(:user_id => 1)
    skill_datastore.save(skill)
    Repository.register(:skill, skill_datastore)

    @user.skills.should == [skill]
  end
end
