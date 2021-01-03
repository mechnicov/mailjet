class ApplicationMailer < ActionMailer::Base
  default from: ENV["MAILJET_SENDER"]
  layout "mailer"
end
