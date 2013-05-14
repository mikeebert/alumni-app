require 'spec_helper'
require 'shared_examples/datastore_examples'

describe Datastore::GradClass do
  let(:datastore_class) { Datastore::GradClass }
  subject { Datastore::GradClass.new }
  let(:object) { GradClass.new }
  let(:another_object) { GradClass.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"
end

