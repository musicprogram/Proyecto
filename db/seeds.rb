# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Empleado.create! [
  {nombre_completo: 'Juan Pérez'},
  {nombre_completo: 'Pedro López'},
  {nombre_completo: 'María Hernández'},
  {nombre_completo: 'Carlos Sánchez'},
]

#Admin.create :email => 'john@gmail.com', crypted_password: => 'topsecret'


 #admin.each do |admin|
 #	@admin = Admin.where(admin).first_or_create
 #end
 