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
    while true
      puts "Enter the number of the article to read, type list to see the headlines again, or type exit:"
      input = gets.strip.downcase
      if input == "exit"
        break
      elsif input.to_i > 0
      elsif input == "list"
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