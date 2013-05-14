require 'spec_helper'
require 'shared_examples/datastore_examples'

describe Datastore::PairRequest do
  let(:datastore_class) { Datastore::PairRequest }
  subject { Datastore::PairRequest.new }
  let(:object) { PairRequest.new }
  let(:another_object) { PairRequest.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"
end
