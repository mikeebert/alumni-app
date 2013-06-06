module Datastore
  class Task < Datastore::Base

    def get_user_tasks(id)
      user_tasks = []

      @records.each do |id, task|
        user_tasks << task if task.user_id == id
      end

      user_tasks
    end
  end
end
