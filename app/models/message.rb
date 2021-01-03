class Message < ApplicationRecord
  validates :email, :subject, :body, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
