class User
  attr_accessor :name, :email, :id

  def initialize(params = {})
    @name = params[:name]
    @email = params[:email]
  end

  def projects
    Repository.for(:project).get_user_projects(@id)
  end
end
