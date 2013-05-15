class Task
  attr_accessor :name, :start_date, :user_id, :id

  def initialize(params = {})
    @name = params[:name]
    @start_date = params[:start_date]
    @user_id = params[:user_id]
  end

end
