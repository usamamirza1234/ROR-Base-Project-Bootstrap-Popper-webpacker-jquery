ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'usamak.mirza@gmail.com',
  :password             =>  '_+U4mPCch6/q4EB',
  :domain               =>  'heroku.com',
  :enable_starttls_auto  =>  true
}