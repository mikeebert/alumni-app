require 'datastore/pair_request'
require 'models/pair_request'

describe Datastore::PairRequest do
  it "saves a PairRequest object with an id" do
    datastore = Datastore::PairRequest.new
    pair_request = PairRequest.new

    datastore.save(pair_request)

    datastore.records[1].should == pair_request
    pair_request.id.should == 1
  end

  it "returns all pair_requests" do
    datastore = Datastore::PairRequest.new
    pair_request = PairRequest.new
    pair_request2 = PairRequest.new

    datastore.save(pair_request)
    datastore.save(pair_request2)

    datastore.all.should == [pair_request, pair_request2]
  end
end
