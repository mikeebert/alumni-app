class Skill
	attr_accessor :title, :description

	def initialize(params = {})
		@title =  params[:title]
		@description = params[:description]
	end

end