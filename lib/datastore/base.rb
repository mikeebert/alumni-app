module Datastore
  class Base
    attr_accessor :records
    def initialize
      @id = 1
      @records = {}
    end

    def save(object)
      object.id = @id
      records[@id] = object
      @id += 1
    end

    def all
      records.map { |k,v| v }
    end

    def find_by_id(id)
      records.fetch(id, Datastore::RecordNotFound)
    end
  end
end
