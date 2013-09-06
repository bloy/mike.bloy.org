set :application, "mike.bloy.org"
require 'dotenv/capistrano'

set :location, ENV['CAPISTRANO_LOCATION']
set :user, ENV['CAPISTRANO_USER']
set :repository, ENV['CAPISTRANO_REPOSITORY']
set :branch, ENV['CAPISTRANO_BRANCH'] if ENV['CAPISTRANO_BRANCH']
set :use_sudo, false
set :deploy_to, ENV['CAPISTRANO_DEPLOY_TO']
set :deploy_via, :copy
set :copy_exclude, ".git/*"
set :build_script, "bundle install && middleman build && middleman build && mv build public"
set :scm, :git

role :web, location
role :app, location
role :db, location
role :db, location

namespace :deploy do
  after "deploy:restart", "deploy:git:push_deploy_tag"

  task :migrate do
    puts "no migrations"
  end

  task :start do
    puts "nothing to start for static site"
  end

  task :stop do
    puts "nothing to stop for static site"
  end

  task :restart do
    puts "nothing to restart for static site"
  end

  namespace :git do
    desc "Place release tag into git and push to server"
    task :push_deploy_tag do
      user = `git config --get user.name`
      email = `git config --get user.email`
      puts `git tag release/#{release_name} #{current_revision} -m "Deployed by #{user} <#{email}>"`
      puts `git push --tags`
    end
  end
end
