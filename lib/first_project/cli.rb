#CLI Controller
class FirstProject::CLI
  
  def call
    list_news
    menu
    goodbye
  end
  
  def list_news
    puts "Here are the top news stories right now:"
    @news = FirstProject::News.now
    @news.each_with_index do |news, index|
      puts "#{index+1}. #{news.headline}"
    end
  end
  
  def menu
    
    while true
      puts "Enter the number of the article to read, type update to see the newest headlines, or type exit:"
      input = gets.strip.downcase
      if input == "exit"
        break
      elsif input.to_i > 0 && input.to_i < 7
        text = FirstProject::News.article_scraper(@news[input.to_i-1].url)
        puts text
        
      elsif input == "update"
        list_news
      else
        puts "Please put a valid input"
      end
    end
  end
  
  def goodbye
    puts "Come back tomorrow for more news"
  end

end