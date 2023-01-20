require "pry"

class User
  @@User = []

  attr_accessor :username, :password, :id

  def initialize(username, password)
    @username = username
    @password = password
    @id = @@User.length + 1
    @@User << self
  end

  # return all users
  def self.all
    @@User
  end

  # create a test user
  def self.seed
    User.new("Joe", "123")
  end

  # find a user
  def self.find(id)
    self.all.find { |user| user.id == id }
  end
end

binding.pry
