module Datastore
  class Skill
    attr_accessor :records

    def initialize
      @id = 1
      @records = {}
    end

    def save(skill)
      skill.id = @id
      @records[@id] = skill
      @id += 1
    end

    def all
    	@records.map {|k,v| v}
    end

  end
end