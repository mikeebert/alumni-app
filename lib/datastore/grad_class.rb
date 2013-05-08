module Datastore
  
  class GradClass
    
    attr_accessor :records
    
    def initialize
      @records = {}
      @id = 1
    end
    
    def save(grad_class)
      @records[@id] = grad_class
      @id += 1
    end
    
    def all
      @records.map {|k,v| v}
    end
    
  end
  
end
