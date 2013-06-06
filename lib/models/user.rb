class User
  attr_accessor :name, :email, :id

  def initialize(params = {})
    @name = params[:name]
    @email = params[:email]
  end

  def projects
    Repository.for(:project).get_user_projects(@id)
  end

  def goals
    Repository.for(:goal).get_user_goals(@id)

  def skills
    Repository.for(:skill).get_user_skills(@id)
  end
end
