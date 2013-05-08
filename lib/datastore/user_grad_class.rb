module Datastore
  
  class UserGradClass
    
    attr_accessor :records
    
    def initialize
      @records = {}
      @id = 1
    end
    
    def save(user_grad_class)
      
      @records[@id] = user_grad_class
      @id += 1
      
    end
    
  end
  
end