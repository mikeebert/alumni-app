require 'spec_helper'
require 'shared_examples/datastore_examples'

describe Datastore::User do
  let(:datastore_class) { Datastore::User }
  subject { Datastore::User.new }
  let(:object) { User.new }
  let(:another_object) { User.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"
end
