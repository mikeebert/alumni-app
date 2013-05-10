class Project
  attr_accessor :id, :name, :description, :user_id

  def initialize(params = {})
    @name        = params[:name]
    @description = params[:description]
    @user_id     = params[:user_id]
  end

end
