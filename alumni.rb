
# Something to do with BASH...
$: << File.expand_path(File.dirname(__FILE__)) + '/lib'

# requires everything in the lib/datastore folder that's an rb file
Dir[File.dirname(__FILE__) + '/lib/datastore/*.rb'].each {|file| require file }

# requires everything in the lib/models folder that's an rb file
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

    # the erb method needs a symbol passed to it
    erb 'users/index'.to_sym
  end


  def setup_users
    ["me", "you"].each do |name|
      user = User.new(:name => name, 
                      :email => "#{name}@test.com")
      Repository.for(:user).save(user)
    end
  end

end
