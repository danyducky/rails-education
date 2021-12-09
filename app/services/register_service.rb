module RegisterService
  class RegisterCreator
    def initialize(params)
      @params = params
      @user_params = params.permit(:email, :password)
      @personal_params = params.permit(:firstname, :surname, :patronymic, :birth_date)
    end

    def create_user
      user = User.create(@user_params)
      user.create_personal(@personal_params)
      user.credentials.create(role_id: Role.identifiers[:user])
      user
    end
  end
end
