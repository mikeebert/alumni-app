require 'spec_helper'

describe Alumni do
  def app
    @app ||= Alumni
  end

  it "should load the home page" do
    get "/"
    last_response.should be_ok
  end

  it "should load the users page" do
    get "/users"

    last_response.should be_ok
  end
end
