module Pages
  class Connect
    class << self

      #------------------ Sign up -------------------------
      def email_field
       find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]/UIAScrollView[1]/UIATextField[1]')
      end

      def password_secure_field
        find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]/UIAScrollView[1]/UIASecureTextField[1]')
      end

      def sign_up_tab_button
        find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIASegmentedControl[1]/UIAButton[1]')
      end

      def login_tab_button
        find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIASegmentedControl[1]/UIAButton[2]')
      end

      def sign_up_button
        find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]/UIAScrollView[1]/UIAButton[2]')
      end

      def cancel_button
        find_element(:xpath, '/UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAButton[1]')
      end

      #------------------ Sign in -------------------------
      def login_in_button
        find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]/UIAScrollView[2]/UIAButton[2]')
      end

      def sign_in_email_field
       find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]/UIAScrollView[2]/UIATextField[1]')
      end

      def sign_in_password_secure_field
        find_element(:xpath, '//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]/UIAScrollView[2]/UIASecureTextField[1]')
      end

      def alert_is_include(text_to_compare)
        alert         = driver.switch_to.alert
        alerting_text = alert.text
        raise false unless alerting_text.include? text_to_compare
      end

    end
  end
end

module Kernel
  def connect_screen
    Pages::Connect
  end
end
