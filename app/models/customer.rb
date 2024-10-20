class Customer < ApplicationRecord
  require 'bcrypt'

  def password=(password)
    update(password_hash: BCrypt::Password.create(password))
  end

  def is_password?(password)
    BCrypt::Password.new(password_hash) == password
  end
end
