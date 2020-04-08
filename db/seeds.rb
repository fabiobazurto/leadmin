# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

countries = Country.create([{name: 'Brazil'},{name: 'Ecuador'},{name: 'United States'}])

cities = City.create([{name: 'Vargem Grande', country_id: countries.last.id},
                      {name: 'Surubim', country_id: countries.last.id},
                      {name: 'Vitória do Mearim', country_id: countries.last.id},
{name: 'Vitória de Santo Antão', country_id: countries.last.id},
{name: 'Viseu', country_id: countries.last.id},
{name: 'Conde', country_id: countries.first.id},
{name: 'Vigia', country_id: countries.first.id},
{name: 'Viçosa do Ceará', country_id: countries.first.id},
{name: 'Viçosa', country_id: countries.first.id},
{name: 'Viana', country_id: countries.first.id},
{name: 'Várzea Alegre', country_id: countries.first.id},
{name: 'Varjota', country_id: countries.first.id},
{name: 'Vargem Grande', country_id: countries.first.id},
{name: 'Zamora', country_id: 2},
{name: 'Yaguachi Nuevo', country_id: 2},
{name: 'Vinces', country_id: 2},
{name: 'Ventanas', country_id: 2},
{name: 'Velasco Ibarra', country_id: 2},
{name: 'Tulcán', country_id: 2},
{name: 'Tena', country_id: 2},
{name: 'Sucre', country_id: 2},
{name: 'Santo Domingo de los Colorados', country_id: 2},
{name: 'Santa Rosa', country_id: 2},
{name: 'Santa Elena', country_id: 2},
{name: 'San Lorenzo de Esmeraldas', country_id: 2},
{name: 'San Gabriel', country_id: 2},
{name: 'Samborondón', country_id: 2},
{name: 'Salinas', country_id: 2},
{name: 'Rosa Zarate', country_id: 2},
{name: 'Riobamba', country_id: 2},
{name: 'Quito', country_id: 2},
{name: 'Quevedo', country_id: 2},
{name: 'Puyo', country_id: 2},
{name: 'Pujilí', country_id: 2},
{name: 'Puerto Francisco de Orellana', country_id: 2},
{name: 'Portoviejo', country_id: 2},
{name: 'Playas', country_id: 2},
{name: 'Piñas', country_id: 2},
{name: 'Pelileo', country_id: 2},
{name: 'Pedro Carbo', country_id: 2},
{name: 'Pasaje', country_id: 2},
{name: 'Otavalo', country_id: 2},
{name: 'Springdale', country_id: 3},
{name: 'Texarkana', country_id: 3},
{name: 'Van Buren', country_id: 3},
{name: 'West Memphis', country_id: 3},
{name: 'Washington, D.C.', country_id: 3},
{name: 'Bear', country_id: 3},
{name: 'Dover', country_id: 3},
{name: 'Middletown', country_id: 3},
{name: 'Newark', country_id: 3},
{name: 'Wilmington', country_id: 3},
{name: 'Allapattah', country_id: 3},
{name: 'Altamonte Springs', country_id: 3},
{name: 'Apopka', country_id: 3},
{name: 'Aventura', country_id: 3},
{name: 'Bartow', country_id: 3},
{name: 'Bayonet Point', country_id: 3},
{name: 'Bayshore Gardens', country_id: 3},
{name: 'Belle Glade', country_id: 3},
{name: 'Bellview', country_id: 3},
{name: 'Bloomingdale', country_id: 3},
{name: 'Boca Del Mar', country_id: 3},
{name: 'Boca Raton', country_id: 3},
{name: 'Bonita Springs', country_id: 3}                  ])


9.times do 
  Category.create(name: Faker::Commerce.product_name, tag_list: Faker::Lorem.words(number: 4))
end


9.times do 
  Product.create(name: Faker::Commerce.product_name, color: 'white', size: 'large', price: Faker::Number.decimal(l_digits: 2),stock: Faker::Number.number(digits: 2), category_id: Faker::Number.number(digits: 1))
end

3.times do
  Store.create(name: Faker::Company.name, street: Faker::Address.street_name, number: '1234', zipcode:'1234', city_id: 1, country_id: 1)
  
end

