$: << File.expand_path(File.dirname(__FILE__)) + '/lib'
Dir[File.dirname(__FILE__) + '/lib/datastore/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each {|file| require file }

require 'sinatra'
require 'repository'

{:user => Datastore::User.new
}.each do |type, repo|
  Repository.register(type, repo)
end

class Alumni < Sinatra::Application
  get '/' do
    "Hello World"
  end

  get '/users' do
    setup_users
    @users = Repository.for(:user).all

    erb 'users/index'.to_sym

    get '/user_skills' do

    end
  end


  def setup_users
    ["me", "you"].each do |name|
      user = User.new(:name => name, 
                      :email => "#{name}@test.com")
      Repository.for(:user).save(user)
    end
  end

end
