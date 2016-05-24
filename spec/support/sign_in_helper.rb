require_relative 'pages/welcome'
require_relative 'pages/connect'

module SignInHelper
  def sign_in_as(email,password)

    welcome_screen.sign_up_now.click

    connect_screen.email.type(email)

    connect_screen.password.type(password)

  end
end
