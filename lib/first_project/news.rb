class FirstProject::News
 attr_accessor :headline, :url
  def self.today
    self.scrape_headlines
  end
  
  def self.scrape_headlines
    news = []
    doc = Nokogiri::HTML(open("https://www.statesman.com/"))
    doc.css(".stories .summary").each do |story|
      
    end
  end
end