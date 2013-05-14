class UserGradClass
  attr_accessor :id, :class_id, :user_id

  def initialize(params = {})
    @class_id = params[:class_id]
    @user_id = params[:user_id]
  end

end
