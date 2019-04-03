require "bundler/gem_tasks"
task :default => :spec

def reload!
  load '.leaderboard/lib'
end

task :console do
  Pry.start
end
