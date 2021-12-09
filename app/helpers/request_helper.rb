module RequestHelper

  def render_fio(personal)
    "Привет, #{personal.surname} #{personal.firstname} #{personal.patronymic}!"
  end
end
