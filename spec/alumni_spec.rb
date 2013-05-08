require 'spec_helper'

describe Alumni do
  def app
    @app ||= Alumni
  end

  before :each do
    setup_repositories
  end

  it "should load the home page" do
    get "/"
    last_response.should be_ok
  end

  it "should load the users page" do
    get "/users"

    last_response.should be_ok
  end

private 

  def setup_repositories
    {
      :user => Datastore::User.new
    }.each do |type, repo|
        Repository.register(type, repo)
    end
  end

end
