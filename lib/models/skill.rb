class Skill
	attr_accessor :title, :description, :id, :user_id

	def initialize(params = {})
		@title =  params[:title]
		@description = params[:description]
    @user_id = params[:user_id]
	end

end