module SystemService
  class SystemBuilder
    def initialize(user)
      @user = user
    end

    def build_available
      System.joins(:system_bindings).where(system_bindings: { role_id: @user.role_ids })
    end
  end
end