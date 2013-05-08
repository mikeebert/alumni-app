require 'spec_helper'
require 'models/skill'

describe Skill do
	it "should have a title" do
		skill = Skill.new(title: 'Rails')
		skill.title.should == 'Rails'
	end

	it "should have a description" do
		skill = Skill.new(description: 'Rails is a framework')
		skill.description.should == 'Rails is a framework'
	end

end
