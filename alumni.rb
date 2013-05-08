$: << File.expand_path(File.dirname(__FILE__)) + '/lib'
Dir[File.dirname(__FILE__) + '/lib/datastore/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each {|file| require file }

require 'sinatra'
require 'repository'

{:user => Datastore::User.new,
 :project => Datastore::Project.new
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
    project = Project.new(:name => "Project 1", :description => "Jekyll Blog", :user_id => 101)
    Repository.for(:project).save(project)

    @projects = Repository.for(:project).all

    erb 'projects/index'.to_sym
  end
end
