class CLI
  def run
    User.seed
    system("clear")
    greeting
    login
    menu until menu == "exit"
    goodbye
  end

  def login
    is_authenticated = false

    while is_authenticated != true
      puts "Please login."
      puts "Please enter your username."
      username = gets.chomp
      puts "Please enter your password."
      password = gets.chomp
      if Auth.authenticate_user(User.all, username, password)
        puts "Login Successful."
        is_authenticated = true
      else
        puts "Invalid login attempt."
      end
    end
  end

  def greeting
    puts "Welcome to my web scraper!"
  end

  def goodbye
    system("clear")
    puts "Goodbye!"
  end

  def menu
    puts "Choose one of the following:"
    puts "1. Young Adult"
    puts "2. Travel"
    puts "3. Mystery"
    puts "4. Historical Fiction"
    puts "5. Exit"
    user_input = gets.chomp
    if user_input == "5"
      user_input = "exit"
      return user_input
    end
    API.get_book(user_input)
  end
end
