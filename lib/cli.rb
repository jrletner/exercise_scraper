require "pry"

class CLI
  attr_accessor :user

  def run
    User.seed
    system("clear")
    greeting
    login_or_signup
    binding.pry
    menu until menu == "exit"
    goodbye
  end

  def login_or_signup
    response = ""
    while response != "login" && response != "signup"
      puts "Do you want to login or signup?"
      response = gets.chomp
    end
    if response == "login"
      login
    else
      signup
    end
  end

  def login
    is_authenticated = false

    while is_authenticated != true
      puts "Please login."
      puts "Please enter your username."
      username = gets.chomp
      puts "Please enter your password."
      password = gets.chomp
      currUser = Auth.authenticate_user(User.all, username, password)
      if currUser
        puts "Login Successful."
        is_authenticated = true
        @user = currUser
      else
        puts "Invalid login attempt."
      end
    end
  end

  def signup
    puts "Enter a username."
    username = gets.chomp
    puts "Enter a password."
    password = gets.chomp
    User.new(username, Auth.create_hash(password))
    login
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
