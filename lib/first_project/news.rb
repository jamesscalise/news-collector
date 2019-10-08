require "pry"
require "open-uri"
require "nokogiri"

class FirstProject::News
 attr_accessor :headline, :url
  def self.now
    self.scrape_headlines
  end
  
  def self.scrape_headlines
    news = []
    doc = Nokogiri::HTML(open("www.statesman.com"))
    doc.css(".stories .summary").each do |story|
      item = self.new
      item.headline = story.css("")
      binding.pry
    end
    
    news
  end
end