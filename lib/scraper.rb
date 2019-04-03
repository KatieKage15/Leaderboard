require_relative '../lib/leaderboard/athlete.rb'
require_relative '../lib/leaderboard/workout.rb'

class Scraper
  attr_accessor :name, :workout, :athlete, :score

  def initialize(workout)
    @workout = Workout.new
  end

  def get_page
    @doc = Nokogiri::HTML(open("https://app.wodify.com/Performance/LeaderboardShowEntry.aspx"))
  end
end
