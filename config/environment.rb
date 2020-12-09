# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Connect to  email provider in Plesk
ActionMailer::Base.smtp_settings = {
  address: 'localhost',
	enable_starttls_auto: true,
 	port: 587,
	authentication: :plain,
  user_name: ENV['EMAIL_USERNAME'],
  password: ENV['EMAIL_PASSWORD'],
	openssl_verify_mode: 'none'
}
