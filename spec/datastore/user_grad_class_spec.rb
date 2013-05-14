require 'spec_helper'
require 'shared_examples/datastore_examples'

describe Datastore::UserGradClass do
  let(:datastore_class) { Datastore::UserGradClass }
  subject { Datastore::UserGradClass.new }
  let(:object) { UserGradClass.new }
  let(:another_object) { UserGradClass.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"
end

