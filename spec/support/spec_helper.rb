require "rspec/expectations"
require "appium_lib"
require "rspec"
require "sauce_whisk"

require_relative "sign_in_helper"

RSpec.configure do | config |

  config.before(:each) do | example |

    caps = {
      caps: {
        platformVersion: "9.3",
        deviceName: "iPhone 6s",
        platformName: "iOS",
        app: "/Users/hoaiviet/Library/Developer/Xcode/DerivedData/goru-ewipagilppyatofoenpcxsmqpqfo/Build/Products/PreRelease-iphonesimulator/goru.app",
        deviceOrientation: 'portrait',
        name: "vn.siliconstraits.goru",
        # autoAcceptAlerts: true,
      }
    }

    @driver = Appium::Driver.new(caps)
    @driver.start_driver

    Appium.promote_appium_methods RSpec::Core::ExampleGroup
    Appium.promote_singleton_appium_methods Pages
  end

  config.include SignInHelper

  config.after(:each) do | example |
    sessionid = @driver.session_id
    @driver.driver_quit
  end

end
