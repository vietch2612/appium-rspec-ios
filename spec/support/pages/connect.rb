module Pages
  class Connect
    class << self

      def email
       find_elements(:class_name,'UIATextField')[0]
      end

      def password
        find_elements(:class_name,'UIATextField')[1]
      end

      def sign_up
        button('Sign up')
      end

    end
  end
end

module Kernel
  def connect_screen
    Pages::Connect
  end
end
