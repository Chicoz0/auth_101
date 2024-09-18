class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  normalizes :email, with: ->(email) {email.strip.downcase} #new method that strips extra spaces, typecharacters and lowercase

  generates_token_for :password_reset, expires_in: 15.minutes do     # :email_confirmation (would be for email confirmation if we would want this functionality)
    password_salt&.last(10)                                          # email
  end

end
