FactoryBot.define do
  
  #factory for valid stores
  factory :store do
    name {"Pycca Central"}
    street {"Av. 9 de Octubre"}
    number  {"1212"}
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
