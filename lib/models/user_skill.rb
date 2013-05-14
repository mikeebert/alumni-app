class UserSkill
	attr_accessor :id, :user_id, :skill_id, :level

	def initialize(params = {})
    @user_id = params[:user_id]
    @skill_id = params[:skill_id]
    @level = params[:level]
  end

end
