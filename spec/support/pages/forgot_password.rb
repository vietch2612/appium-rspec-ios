module Pages
  class ForgotPassword
    class << self

    end
  end
end

module Kernel
  def forgot_password_screen
    Pages::ForgotPassword
  end
end
