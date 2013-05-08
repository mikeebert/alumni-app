module Datastore
  class PairRequest
    attr_accessor :records

    def initialize
      @id = 1
      @records = {}
    end

    def save(pair_request)
      pair_request.id = @id
      @records[@id] = pair_request
      @id += 1
    end

    def all
      @records.map {|k,v| v}
    end

  end
end
