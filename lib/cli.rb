class CLI
  def run
    system("clear")
    greeting
    while menu != "exit"
    end
    goodbye
  end

  def greeting
    puts "Welcome to my web scraper!"
  end

  def menu
    puts "Choose one of the following:"
    puts "1. Young Adult"
    puts "2. Travel"
    puts "3. Mystery"
    puts "4. Historical Fiction"
    user_input = gets.chomp
    API.get_book(user_input)
  end

  def goodbye
    system("clear")
    puts "The program is now exiting. Thank you!"
  end
end
