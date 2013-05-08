require 'spec_helper'
require 'models/user_skills'

describe UserSkills do
  it "sets a user_id" do
    @user_skills = UserSkills.new(:user_id => 1)
    @user_skills.user_id.should == 1
  end

  it "sets a skill_id" do
    @user_skills = UserSkills.new(:skill_id => 1)
    @user_skills.skill_id.should == 1
  end

  it "sets a level" do
    @user_skills = UserSkills.new(:level => "Beginner" )
    @user_skills.level.should == "Beginner"
  end

end