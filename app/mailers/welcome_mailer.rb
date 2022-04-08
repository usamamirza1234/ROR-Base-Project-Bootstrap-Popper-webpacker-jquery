class WelcomeMailer < ApplicationMailer
  def send_greeting_notification(app_user)
    @app_user = app_user
    @greeting = "Hi"
    mail to: @app_user.email, subject: "Thank you for signing up"
  end
end
