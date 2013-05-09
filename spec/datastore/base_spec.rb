require "spec_helper"

class Foo;attr_accessor :id;end

describe Datastore do
  subject { Datastore::Base.new }
  let(:object) { Foo.new }
  let(:another_object) { Foo.new }

  before do
    subject.save(object)
    subject.save(another_object)
  end

  it "initiailizes with an empty has as records" do
    store = Datastore::Base.new
    expect(store.records).to be_a Hash
  end

  describe "#save" do
    it "assigns an id to the oject being stored" do
      expect(object.id).to eq 1
      expect(another_object.id).to eq 2
    end

    it "saves the object in the records with the id as the key" do
      expect(subject.records).to be_a Hash
      expect(subject.records[1]).to eq object
      expect(subject.records[2]).to eq another_object
    end
  end

  context "#all" do
    it "reutrns a collection of saved objects" do
      expect(subject.all).to match_array [object, another_object]
    end
  end
end
