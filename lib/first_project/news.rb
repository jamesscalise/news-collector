class FirstProject::News
  @headlines, @url, @text
  def self.today
    self.scrape_headlines
  end
  
  def self.scrape_headlines
  end
end