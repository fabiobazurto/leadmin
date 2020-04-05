class Store < ApplicationRecord
  belongs_to :city
  belongs_to :country

  validates :name, :street, :number, :zipcode, :city, :country, presence: true
  validates :number, :zipcode , numericality:  { only_integer: true}
  
end
