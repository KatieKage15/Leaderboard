require 'pry'
require 'nokogiri' #parse data and put it into a user friendly format
require 'open-uri' #opens webpage

Bundler.require

class Environment
  def run
    puts "Hi!"
    puts "What workout would you like to choose?"
    Scraper.scrape_workout
    display_workouts
  end

  def display_workouts
    Leaderboard.all.each.with_index() do |leaderboard, |
      puts "#{}, #{leaderboard.workout}"
    end
  end
end
