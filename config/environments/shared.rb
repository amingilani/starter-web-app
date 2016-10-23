# frozen_string_literal: true
Rails.application.configure do
  # Settings here will be overidden by individual environments

  # action mailer configuration
  if Settings.host.port.present?
    config.action_mailer.default_url_options = {
      host: Settings.host.name,
      port: Settings.host.port
    }
  else
    config.action_mailer.default_url_options = {
      host: Settings.host.name
    }
  end
end
