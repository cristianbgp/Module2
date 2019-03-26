require "faker"

Faker::Config.locale = 'es'
# file = File.open("students.txt", "w")
# 1000.times { file.puts "INSERT INTO members VALUES ('#{Faker::Name.unique.name}', '#{ing_kind.sample}')" }



10.times { puts "INSERT INTO members VALUES ('#{Faker::Number.unique.number(5)}', '#{Faker::Name.unique.name}', '#{Faker::PhoneNumber.phone_number}', '#{Faker::Address.full_address}')" }