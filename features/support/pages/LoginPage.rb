module Screen
  module Android
    class LoginPage < MyPACDAppPage

      def loginWith(username, password)
        set_login_username(username)
        set_login_password(password)
        log_in
        puts "Log in..."
      end

      def set_login_username(username)
        findById("login_username").send_keys("#{username}")
      end

      def set_login_password(password)
        findById("login_pswd").send_keys("#{password}")
      end

      def log_in
        clickById("login_button")
      end

    end
  end
end
