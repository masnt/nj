# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(family_name:"泉", first_name:"麻彩", family_name_kana:"イズミ", first_name_kana:"マアヤ", postal_code:"000-0000", address:"神奈川県川崎市宮前区平2-18-12", phone_number:"080-0000-0000", email:"nagajakeadmin@gmail.com",password:"123456789", password_confirmation:"123456789", admin:'ture')