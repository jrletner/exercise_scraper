require "bcrypt"

module Auth
  def create_hash(password)
    BCrypt::Password.create(password)
  end

  def self.authenticate_user(users, username, password)
    currUser = nil
    users.each do |user|
      if user.username == username && user.password == password
        # logged in successfully
        currUser = user
        break
      end
    end
    currUser
  end
end
