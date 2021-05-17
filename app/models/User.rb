
class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :favoritequotes
  has_many :quotes, through: :favoritequotes
  has_many :characters, through: :favoritequotes
  validates :username, uniqueness: :true # failure = self.errors.full_messages.to_sentence = "Username has already been taken" 
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Must be a valid email address" } #needs testing.
  validates :password, length: { in: 4..20 }


end