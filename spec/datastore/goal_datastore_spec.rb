require 'spec_helper'

describe Datastore::Goal do
  subject { Datastore::Goal.new }
  let(:goal1) { Goal.new }
  let(:goal2) { Goal.new }

  before do
    subject.save(goal1)
    subject.save(goal2)
  end

  it "saves a Goal object with an id" do
    subject.records[1].should == goal1
    expect(goal1.id).to eq 1
    expect(goal2.id).to eq 2
  end

  it "saves two Goals with different ids" do
    records = subject.records.map { |k, v| k }.uniq.length
    expect(records).to eq 2
  end
  
  it "returns all users" do
    expect(subject.all).to match_array [goal1, goal2]
  end
end
