module Pages
  class Welcome
    class << self

      def try_as_guest
        button('Try as guest')
      end

      def login
        button('Login')
      end

      def sign_up_now
        button('Sign up now')
      end

      def is_showing_welcome_to_singpapore
        begin
          text 'Let\'s go somewhere today'
          try_as_guest
          login
          sign_up_now
          return true
        rescue
          return false
        end
      end

      def is_alert_appear
        begin
          find_element :class_name, 'UIAAlert'
          puts "Haha, they found alert"
          return true
        rescue
          return false
        end
      end

    end

  end
end

module Kernel
  def welcome_screen
    Pages::Welcome
  end
end
