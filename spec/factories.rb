FactoryBot.define do
  factory :store_product do
    store 
    product 
    stock { 1 }
  end

  factory :stores_product do
    store { nil }
    product { nil }
    stock { 1 }
  end

  factory :product do
    name { Faker::Food.ingredient  }
    color {[:white, :black, :red, :white].sample  }
    size { [:small, :medium, :large].sample }
    price { Faker::Number.decimal(l_digits: 2)  }
    stock { Faker::Number.number(digits: 4)}
  end
  
  #factory for valid stores
  factory :store do
    name {"Pycca Central"}
    street {"Av. 9 de Octubre"}
    number  {Faker::Number.number(digits: 4)}
    zipcode {"57707"}
    city
    country
  end

  factory :country do
    name {"Ecuador"} #{ Faker::Address.country } # {"Guayaquil"}{"Ecuador"}
  end
  
  factory :city do
    name {"Guayaquil"}# { Faker::Address.city }
    country
  end

end