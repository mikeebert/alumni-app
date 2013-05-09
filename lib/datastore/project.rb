module Datastore
  class Project
    attr_accessor :records

    def initialize
      @id = 1
      @records = {}
    end

    def save(project)
      project.id = @id
      @records[@id] = project
      @id += 1
    end

    def all
      @records.map {|k,v| v}
    end

  end
end
