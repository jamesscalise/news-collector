require "pry"
require "open-uri"
require "nokogiri"

class NewsCollector::News
 attr_accessor :headline, :url
  def self.now
    self.scrape_headlines
  end
  
  def self.scrape_headlines
    news = []
    doc = Nokogiri::HTML(open("https://www.statesman.com/"))
    doc.css(".stories .summary").each do |story|
      item = self.new
      item.headline = story.css("a").text.gsub(/[\t\r\n]/,'')
      item.url = story.css("a").attr("href").value
      news << item
    end
    news
    
  end
  
  def self.article_scraper(url)
    page = Nokogiri::HTML(open(url))
    article = []
    article = page.css(".article-body div.inner p").map do |paragraph|
      paragraph.text
    end
    noBlanksArticle = article.reject{|c| c.empty?}
    articleString = noBlanksArticle.join("\n")
    
  end
end