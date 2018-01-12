# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
martinUser = User.new(
  :email                 => "martin.p@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
martinUser.save!

damiUser = User.new(
  :email                 => "dami.d@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
damiUser.save!

maxiUser = User.new(
  :email                 => "maxi.a@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
maxiUser.save!

darioUser = User.new(
  :email                 => "dario.d@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
darioUser.save!

marcosUser = User.new(
  :email                 => "marcos.o@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
marcosUser.save!

guilleUser = User.new(
  :email                 => "guille.c@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
guilleUser.save!

santiUser = User.new(
  :email                 => "santi.c@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
santiUser.save!

juabaUser = User.new(
  :email                 => "juaba.c@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
juabaUser.save!

luisUser = User.new(
  :email                 => "luis.s@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
luisUser.save!

gasparUser = User.new(
  :email                 => "gaspar.s@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
gasparUser.save!

hugoUser = User.new(
  :email                 => "hugo.h@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
hugoUser.save!

leoUser = User.new(
  :email                 => "leo.g@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
leoUser.save!

pabloUser = User.new(
  :email                 => "pablo.f@cotesma.com",
  :password              => "123456",
  :password_confirmation => "123456"
)
pabloUser.save!
