class GradClass
  attr_accessor :id, :year, :quarter

  def initialize(params = {})
    @year = params[:year]
    @quarter = params[:quarter]
  end
end
