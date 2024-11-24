class Shop < ApplicationRecord
  require 'bcrypt'
  has_many :products
  after_create :add_session_hash

  def password=(password)
    update(password_hash: BCrypt::Password.create(password))
  end

  def is_password?(password)
    BCrypt::Password.new(password_hash) == password
  end

  def add_session_hash
    update(session_hash: SecureRandom.base64(24))
  end
end
