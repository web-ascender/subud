Subud::Application.config.middleware.use ExceptionNotifier,
  :email_prefix => "[ERROR] SUBUD HEROKU -",
  :sender_address => %{"notifier" <webmaster@subudusa.org>},
  :exception_recipients => %w{ryan.doom@webascender.com}