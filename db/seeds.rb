# Database initialization content
# Before insert, indicate table name
#
# Table
#
# Table.create(title: 'tableTitle')
#

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Roles

Role.create(id: 1, caption: 'Пользователь')
Role.create(id: 2, caption: 'Студент')
Role.create(id: 3, caption: 'Преподаватель')
Role.create(id: 4, caption: 'Администратор')

# Systems

student_sys = System.create(id: 1, caption: 'Рабочий модуль студента', short_caption: 'Модуль студента', route: '/student')
teacher_sys = System.create(id: 2, caption: 'Рабочий модуль преподавателя', short_caption: 'Модуль преподавателя', route: '/teacher')
admin_sys = System.create(id: 3, caption: 'Рабочий модуль администрации', short_caption: 'Модуль администрации', route: '/administrative')

# System_bindings

student_sys.system_bindings.create(role_id: 2)
teacher_sys.system_bindings.create(role_id: 3)
admin_sys.system_bindings.create(role_id: 4)

# Specialities

programmer_speciality = Speciality.create(title: 'Программирование в компьютерных системах', short_caption: 'ПО', years_to_study: 3, months_to_study: 10)
network_secure_speciality = Speciality.create(title: 'Защитники информации', short_caption: 'ЗИ', years_to_study: 3, months_to_study: 10)
network_speciality = Speciality.create(title: 'Компьютерные сети', short_caption: 'КС', years_to_study: 3, months_to_study: 10)

# Groups

programmer_speciality.groups.create(caption: 'ПО-415')
network_secure_speciality.groups.create(caption: 'ЗИ-312')
network_speciality.groups.create(caption: 'КС-314')
