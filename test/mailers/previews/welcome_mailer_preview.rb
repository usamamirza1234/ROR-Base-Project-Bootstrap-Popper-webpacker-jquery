# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/send_greetings_notifications
  def send_greetings_notifications
    WelcomeMailer.send_greetings_notifications
  end

end
