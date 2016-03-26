# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.find_by_email("bolonka94@gmail.com")
if u.blank?
  u = User.create(email: "bolonka94@gmail.com", password: "123", password_confirmation: "123")
  u.activation_state = 'active'
  u.save
end

r1 = Role.create(name: 'Преподаватель', short_name: 'Преподаватель')

r2 = Role.create(name: 'Администратор', short_name: 'Админ')

r3 = Role.create(name: 'Студент', short_name: 'Студент')

RoleUser.create(role: r1, user: u)
RoleUser.create(role: r2, user: u)
RoleUser.create(role: r3, user: u)
