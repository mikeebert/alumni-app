module Datastore
  class Skill < Datastore::Base
  
    def get_user_skills(id)
      user_skills = []

      @records.each do |id, skill|
        user_skills << skill if skill.user_id == id
      end

      user_skills
    end

  end
end
