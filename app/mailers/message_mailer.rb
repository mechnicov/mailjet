class MessageMailer < ApplicationMailer
  def send_email(email:, subject:, body:)
    @body = body

    mail to: email, subject: subject
  end
end
