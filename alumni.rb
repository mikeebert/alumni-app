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
    ["me", "you"].each do |name|
      user = User.new(:name => name, :email => "#{name}@test.com")
      Repository.for(:user).save(user)
    end

    @users = Repository.for(:user).all

    erb 'users/index'.to_sym
  end

  get '/projects' do
    project = Project.new(:name => name, :description => "#{name}@test.com", :user_id => "#{name}@test.com")
    Repository.for(:project).save(project)

    @projects = Repository.for(:user).all

    erb 'users/index'.to_sym
  end
end
