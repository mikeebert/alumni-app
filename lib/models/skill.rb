class Skill
	attr_accessor :title, :description, :id

	def initialize(params = {})
		@title =  params[:title]
		@description = params[:description]
	end

end