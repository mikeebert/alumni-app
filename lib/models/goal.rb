class Goal

  attr_reader :name, :description, :user_id
  attr_accessor :id

  def initialize(params = {})
    @name = params[:name]
    @description = params[:description]
    @user_id = params[:user_id]
  end

end