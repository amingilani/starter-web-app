# frozen_string_literal: true
Rails.application.configure do
  # Settings here will be overidden by individual environments

    config.action_mailer.default_url_options = Settings.host
    config.action_mailer.smtp_settings = {
      address: Settings.smtp.address,
      port: 587,
      user_name: Settings.smtp.username,
      password: Settings.smtp.password
    }
  end
end
