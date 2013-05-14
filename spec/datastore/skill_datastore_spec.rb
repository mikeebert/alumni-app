require 'spec_helper'
require 'shared_examples/datastore_examples'

describe Datastore::Skill do
  let(:datastore_class) { Datastore::Skill }
  subject { Datastore::Skill.new }
  let(:object) { Skill.new }
  let(:another_object) { Skill.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it_behaves_like "datastore"
end
