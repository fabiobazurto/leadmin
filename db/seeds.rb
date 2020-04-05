# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

countries = Country.create([{name: 'Ecuador'},{name:'Peru'}])
citiesec = City.create([{name: 'Quito', country: countries.first},{name: 'Guayaquil', country: countries.first},{name:'Cuenca', country: countries.first}])
citiespe = City.create([{name: 'Lima', country: countries.last},{name: 'Cuzco', country: countries.last},{name:'Piura', country: countries.last}])
