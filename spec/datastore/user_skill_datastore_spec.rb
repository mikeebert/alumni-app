require 'datastore/user_skill'
require 'models/user_skill'

describe Datastore::UserSkill do 
	it "saves a UserSkills object with an id" do
		datastore 	= Datastore::UserSkill.new
		user_skill = UserSkill.new

		datastore.save(user_skill)

		datastore.records[1].should == user_skill
		user_skill.id.should == 1
	end 
end
