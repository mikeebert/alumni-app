require 'datastore/skill'
require 'models/skill'

describe Datastore::Skill do
  it "saves a Skill object with an id" do
    datastore = Datastore::Skill.new
    skill = Skill.new

    datastore.save(skill)

    datastore.records[1].should == skill
    skill.id.should == 1
  end

  it "returns all skills" do
    datastore = Datastore::Skill.new
    skill = Skill.new
    skill2 = Skill.new

    datastore.save(skill)
    datastore.save(skill2)

    datastore.all.should == [skill, skill2]
  end
end
