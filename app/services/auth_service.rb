module AuthService
  class LoginHandler
    def initialize(params)
      @params = params
    end

    def handle
      user = initial_user
      validate_user user
    end

    def initial_user
      User.find_by_email(user_email)
    end

    def validate_user(user)
      user.present? && user.authenticate(user_password) ? user : false
    end

    private

    def user_email
      @params[:email]
    end

    def user_password
      @params[:password]
    end
  end
end
