require 'spec_helper'
require 'models/task'

describe Task do
  it "sets a name for task" do
    @task = Task.new(:name => "Typing")
    @task.name.should == "Typing"
  end

  it "sets the start date" do
    @task = Task.new(:start_date => "Monday")
    @task.start_date.should == "Monday"
  end

  it "sets the user_id" do
    @task = Task.new(:user_id => 1)
    @task.user_id.should == 1
  end

end
