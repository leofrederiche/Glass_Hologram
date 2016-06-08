# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user = User.new
@user.email = "leofrederiche@gmail.com"
@user.password = "Leo@100298"
@user.name = "Leonardo Camp"
@user.save

@user = User.new
@user.email = "natali@gmail.com"
@user.password = "Leo@100298"
@user.name = "Natali"
@user.save