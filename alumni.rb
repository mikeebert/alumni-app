$: << File.expand_path(File.dirname(__FILE__)) + '/lib'
Dir[File.dirname(__FILE__) + '/lib/datastore/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/models/*.rb'].each {|file| require file }

require 'sinatra'
require 'repository'
require './config/seed'

{:goal => Datastore::Goal.new,
 :grad_class => Datastore::GradClass.new,
 :pair_request => Datastore::PairRequest.new,
 :project => Datastore::Project.new,
 :skill => Datastore::Skill.new,
 :user => Datastore::User.new,
 :user_grad_class => Datastore::UserGradClass.new,
 :user_skills => Datastore::UserSkill.new
}.each do |type, repo|
  Repository.register(type, repo)
end

Seed.users

class Alumni < Sinatra::Application
  get '/' do
    "Hello World"
  end

  get '/users' do
    @users = Repository.for(:user).all

    erb 'users/index'.to_sym
  end

  get '/user/:id' do
    @user = Repository.for(:user).find_by_id(:id)
  end
end
