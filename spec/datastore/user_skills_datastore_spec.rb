require 'datastore/user_skills'
require 'models/user_skills'

describe Datastore::UserSkills do 
	it "saves a UserSkills object with an id" do
		datastore 	= Datastore::UserSkills.new
		user_skills = UserSkills.new

		datastore.save(user_skills)

		datastore.records[1].should == user_skills
		user_skills.id.should == 1
	end 
end