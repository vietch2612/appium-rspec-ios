require_relative "support/spec_helper"

describe "Sign up test" do

  # Invalid email format
  it "can be check invalid email format" do
    sign_up_as 'viet.ch2612','12345678'
    connect_screen.alert_is_include('Please input a valid email.')
  end

  # Short password
  it "can be check short password" do
    sign_up_as 'viet.ch2612@gmail.com','12345'
    connect_screen.alert_is_include('at least 6 characters.')
  end

end
