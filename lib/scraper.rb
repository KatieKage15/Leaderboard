require 'open-uri'
require 'nokogiri'

Wodify = https://app.wodify.com/Performance/LeaderboardShowEntry.aspx
class Scraper

  def self.scrape_workout
    html = open("Wodify")
    doc = Nokogiri::HTML(html)
    doc.css("")[0].css("").each do ||
      title = leaderboard.css("").text.strip
      leaderboard = Leaderboard.new(title)
      leaderboard.save
    end
  end
end
