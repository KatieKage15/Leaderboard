require "bundler/gem_tasks"
task :default => :spec
require_relative './config/envinronment'

def reload!
  load_all './leaderboard/lib'
end

task :console do
  Pry.start
end
