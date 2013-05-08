class UserGradClass
  
  attr_accessor :user_id, :grad_class_id
  
  def initialize(params = {})
    @user_id = params[:user_id]
    @grad_class_id = params[:grad_class_id]
  end
  
end