shared_examples "datastore" do
  it "initiailizes with an empty has as records" do
    store = datastore_class.new
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

  describe "#all" do
    it "reutrns a collection of saved objects" do
      expect(subject.all).to match_array [object, another_object]
    end
  end

  describe "#find_by_id" do
    it "returns the object with the id" do
      expect(subject.find_by_id 2).to eq another_object
    end

    it "returns an error if the record is not found" do
      expect(subject.find_by_id 3).to eq Datastore::RecordNotFound
    end
  end
end
