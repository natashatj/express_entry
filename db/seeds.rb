# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
path_to_countries = "#{Rails.root}/db/csv/countries.csv"
countries = SmarterCSV.process(path_to_countries, {:key_mapping => {:country_number => :id}})
Country.destroy_all
Country.create(countries)
puts "#{countries.count}/#{Country.count} of countries imported"