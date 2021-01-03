require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module Mailjet
  class Application < Rails::Application
    config.load_defaults 6.0
    config.generators.system_tests = nil

    # To use mailjet in dev mode switch off letter-opener
    # in config/environments/development.rb and comment out this line:
    # config.action_mailer.delivery_method = :mailjet
  end
end
