require 'spec_helper'
require 'models/pair_request'

describe PairRequest do
  it "sets a title for a pair_request" do
    pair_request = PairRequest.new(:title => "Learning rSpec")
    pair_request.title.should == "Learning rSpec"
  end

  it "sets a link for a pair_request" do
    pair_request = PairRequest.new(:link => "http://alpha.pairseed.com/topics/1")
    pair_request.link.should == "http://alpha.pairseed.com/topics/1"
  end

  it "sets a user_id for a pair_request" do
    pair_request = PairRequest.new(:user_id => "1")
    pair_request.user_id.should == "1"
  end
end


# name
# link
# user_id