require_relative "support/spec_helper"
require_relative "support/pages/welcome"

describe "Welcome screen test" do

  it "can be check welcome screen is correct" do
    Appium.promote_appium_methods self.class

    welcome_screen.is_showing_welcome_to_singpapore
  end
end
