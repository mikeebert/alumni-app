require 'spec_helper'

describe Repository do

  let(:user)      { User.new }
  let(:datastore) { Datastore::User.new }

  before { Repository.register(:user, datastore) }

  it "should register a repo" do
    Repository.for(:user).should == datastore
  end

  it "returns a datastore" do
    datastore.save(user)
    repo = Repository.for(:user)
    expect(repo.find_by_id(1)).to eq user
  end
end
