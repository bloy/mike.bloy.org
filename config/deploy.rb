require 'bcdatabase'
config = (Bcdatabase.load())['production', 'mike.bloy.org']

set :application, "mike.bloy.org"
set :location, config['location']
set :user, config['user']
set :repository, config['repository']
set :branch, config['branch'] if config['branch']
set :use_sudo, false
set :deploy_to, config['deploy_to']
set :deploy_via, "copy"
set :copy_exclude, [".git"]
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

  task :finalize_update do
    run "cd #{latest_release} && bundle exec compass compile --output-style compressed"
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
