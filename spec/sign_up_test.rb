require_relative "support/spec_helper"

describe "Sign up test" do

  # Invalid email format
  it "can be check invalid email format" do
    Appium.promote_appium_methods self.class

    sign_in_as 'viet.ch2612','12345678'
    connect_screen.alert_is_include('Please input a valid email.')

  end

  # it "can be check welcome screen is correct" do
  #   Appium.promote_appium_methods self.class

  #   sign_in_as 'viet.ch2612','12345678'

  # end

end
