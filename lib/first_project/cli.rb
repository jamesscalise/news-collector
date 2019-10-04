#CLI Controller
class FirstProject::CLI
  
  def call
    list_news
    menu
    goodbye
  end
  
  def list_news
    puts "Here are today's top news stories:"
  end
  
  def menu
    input = nil
    while input != 'exit'
      puts "Enter the number of the article to read, type list to see the headlines again, or type exit:"
      input = gets.strip.downcase
    end
  end
  
  def goodbye
  end

end