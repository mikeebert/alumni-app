class User
  attr_accessor :name, :email, :id

  def initialize(params = {})
    @name = params[:name]
    @email = params[:email]
  end

  # def name=(input)
  #   @name = input
  # end

  # def name
  #   @name
  # end

end
