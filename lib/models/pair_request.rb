class PairRequest
  attr_accessor :id, :title, :link, :user_id

  def initialize(params = {})
    @title = params[:title]
    @link = params[:link]
    @user_id = params[:user_id]
  end

end
