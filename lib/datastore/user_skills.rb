module Datastore
  class UserSkills
    attr_accessor :records

    def initialize
      @id = 1
      @records = {}
    end

    def save(user_skills)
      user_skills.id = @id
      @records[@id] = user_skills
      @id += 1
    end

    def all
      @records.map {|k,v| v}
    end

  end
end
