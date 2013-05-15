module Datastore
  class Project < Datastore::Base

    def get_user_projects(id)
      user_projects = []

      @records.each do |id, project|
        user_projects << project if project.user_id == id
      end

      user_projects
    end
  end
end
