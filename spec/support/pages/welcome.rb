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
        wait do
          text 'Let\'s go somewhere today'
          try_as_guest
          login
          sign_up_now
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
