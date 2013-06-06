module Datastore
  class Goal < Datastore::Base

    def get_user_goals(id)
      user_goals = []

      @records.each do |id, goal|
        user_goals << goal if goal.user_id == id
      end

      user_goals
    end
  end
end
