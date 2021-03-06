require "faker"

Faker::Config.locale = 'es'

format_type = [
  "Betamax",
  "VHS",
  "VHS-C,",
  "8mm",
  "MiniDV",
  "MicroMV"
]

movie_categories = [
  "Absurdist",
  "Action",
  "Adventure",
  "Comedy",
  "Crime",
  "Drama",
  "Fantasy",
  "Historical",
  "Historical",
  "Horror",
  "Magical",
  "Mystery",
  "Paranoid Fiction",
  "Philosophical",
  "Political",
  "Romance",
  "Saga",
  "Satire",
  "Science Fiction",
  "Social",
  "Speculative",
  "Thriller",
  "Urban",
  "Western"
]

name_members = []
number_of_members = 10
number_of_members.times { name_members << Faker::Name.unique.name }

name_actors = []
number_of_actors = 50
number_of_actors.times { name_actors << Faker::Name.name }

name_movies = []
number_of_movies = 100
number_of_movies.times { name_movies << Faker::Movie.quote }

number_of_cassettes = number_of_movies * 2

number_of_orders = number_of_cassettes * 2

name_members.each { |member| puts "INSERT INTO members(name_member, phone, address) VALUES ('#{member}', '#{Faker::Number.number(9)}', '#{Faker::Address.full_address}');" }

format_type.each { |type|  puts "INSERT INTO formats(name_format) VALUES ('#{type}');" }

movie_categories.each { |categorie| puts "INSERT INTO categories(name_category) VALUES ('#{categorie}');" }

name_actors.each { |actor| puts "INSERT INTO actors(name_actor) VALUES ('#{actor}');" }

name_movies.each { |movie| puts "INSERT INTO movies(movie_title, category_id) VALUES ('#{movie}', '#{rand(movie_categories.count) + 1}');" }

number_of_movies.times { puts "INSERT INTO casting(actor_id, movie_id) VALUES ('#{rand(name_actors.count) + 1}', '#{rand(name_movies.count) + 1}');" }

number_of_cassettes.times { puts "INSERT INTO cassettes(movie_id, format_id) VALUES ('#{rand(name_movies.count) + 1}', '#{format_type.sample}');" }

# number_of_orders.times { puts "INSERT INTO orders(rental_date, return_date, cassette_id, member_id) VALUES ('#{Faker::Date.backward(600)}', '#{}', '#{rand(number_of_cassettes) + 1}', '#{rand(number_of_members) + 1}');" }
