module Pages
  class Home
    class << self


      def is_home_screen
        begin
          text 'Welcome to'
          text 'Singapore'
          return true
        rescue
          return false
        end
      end

    end
  end
end

module Kernel
  def home_screen
    Pages::Home
  end
end
