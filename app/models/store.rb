class Store < ApplicationRecord
  belongs_to :city
  belongs_to :country

  has_many :store_products
  has_many :products, through: :store_products
  
  validates :name, :street, :number, :zipcode, :city, :country, presence: true
  validates :number, :zipcode , numericality:  { only_integer: true}
  
end
