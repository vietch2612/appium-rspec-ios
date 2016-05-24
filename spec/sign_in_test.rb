require_relative "support/spec_helper"

describe "Sign in test" do

  # Invalid email format
  it "can be check invalid email format" do
    sign_in_as 'viet.ch2612','12345678'
    connect_screen.alert_is_include('Please input a valid email.')
  end

  # Short password
  it "can be check short password" do
    sign_in_as 'viet.ch2612@gmail.com','12345'
    connect_screen.alert_is_include('at least 6 characters.')
  end

  # Incorrect password
  it "can be check incorrect password" do
    sign_in_as 'viet.ch2612@gmail.com','1234599'
    connect_screen.alert_is_include('check the username existed and password correct')
  end

  # Incorrect email
  it "can be check incorrect email" do
    sign_in_as 'viet.ch2612111@gmail.com','1234599'
    connect_screen.alert_is_include('check the username existed and password correct')
  end

end
