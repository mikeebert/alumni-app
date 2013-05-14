require "spec_helper"
require "shared_examples/datastore_examples"

class Foo
  attr_accessor :id
end

describe Datastore do
  let(:datastore_class) { Datastore::Base }
  subject { Datastore::Base.new }
  let(:object) { Foo.new }
  let(:another_object) { Foo.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"
end
