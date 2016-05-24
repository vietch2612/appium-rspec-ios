require_relative 'pages/welcome'
require_relative 'pages/connect'

module SignInHelper
  def sign_in_as(email,password)

    alert_accept
    alert_accept

    welcome_screen.sign_up_now.click
    connect_screen.email_field.type(email)
    connect_screen.password_secure_field.type(password)
    connect_screen.sign_up_button.click
  end
end
