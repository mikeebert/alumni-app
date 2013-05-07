module Datastore
  class User
    attr_accessor :records

    def initialize
      @id = 1
      @records = {}
    end

    def save(user)
      user.id = @id
      @records[@id] = user
      @id += 1
    end

    def all
      @records.map {|k,v| v}
    end

  end
end
