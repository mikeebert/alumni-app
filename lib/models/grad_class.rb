class GradClass
  
  attr_accessor :year, :quarter, :user_id
  
  def initialize(params = {})
    @year = params[:year]
    @quarter = params[:quarter]
    @user_id = params[:user_id]
  end
  
end