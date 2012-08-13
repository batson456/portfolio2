set :application, "portfolio"
set :domain,      "96.126.109.233"
set :repository,  "git@github.com:batson456/portfolio2.git"
set :user,        "deploy"
set :deploy_to,   "/home/#{user}/public/#{application}"
set :scm,         "git"
set :scm_passphrase, "britney12"
set :use_sudo, false
default_run_options[:pty] = true

role :app, domain
role :web, domain
role :db,  domain, :primary => true

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end
