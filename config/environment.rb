# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {     
    :address => 'smtp.gmail.com',
    :port => '587',
    :authentication => :plain,
    :user_name => Rails.application.credentials.GMAIL_USERNAME,     
    :password => Rails.application.credentials.GMAIL_PASSWORD,     
    :domain => 'gmail.com',   
    :enable_starttls_auto => true 
  }