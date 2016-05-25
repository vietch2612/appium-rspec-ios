require_relative 'pages/welcome'
require_relative 'pages/connect'
require_relative 'pages/home'


module SignInHelper

  def sign_up_as email, password

    if !welcome_screen.is_alert_appear then
      restart_driver
      sign_up email, password
    else
      sign_up email, password
    end
  end

  def sign_in_as email, password

    if !welcome_screen.is_alert_appear then
      restart_driver
      sign_in email, password
    else
      sign_in email, password
    end
  end

  private
  def sign_in email, password
    alert_accept
    alert_accept

    welcome_screen.sign_up_now.click

    connect_screen.login_tab_button.click
    connect_screen.sign_in_email_field.type(email)
    connect_screen.sign_in_password_secure_field.type(password)
    connect_screen.login_in_button.click
  end

  private
  def sign_up email, password
    alert_accept
    alert_accept

    welcome_screen.sign_up_now.click

    connect_screen.email_field.type(email)
    connect_screen.password_secure_field.type(password)
    connect_screen.sign_up_button.click
  end

  private
  def restart_driver
    # driver.restart
    puts "Something when wrong"
    driver.close_app
    driver.launch_app
  end

end
