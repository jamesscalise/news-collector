require "pry"
require "nokogiri"

class FirstProject::News
 attr_accessor :headline, :url
  def self.now
    self.scrape_headlines
  end
  
  def self.scrape_headlines
    news = []
    doc = Nokogiri::HTML(open("https://www.statesman.com/"))
    doc.css(".stories .summary").each do |story|
      item = self.new
      item.headline = story.css("")
      binding.pry
    end
    
    news
  end
end