require 'spec_helper'
require 'shared_examples/datastore_examples'

describe Datastore::Goal do
  let(:datastore_class) { Datastore::Goal }
  subject { Datastore::Goal.new }
  let(:object) { Goal.new }
  let(:another_object) { Goal.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"
end
