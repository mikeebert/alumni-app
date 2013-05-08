module Datastore

  class Goal

    attr_accessor :records

    def initialize
      @id = 1
      @records = {}
    end

    def save(goal)
      goal.id = @id
      @records[@id] = goal
      @id += 1
    end

    def all
      @records.map { |k, v| v }
    end

  end

end