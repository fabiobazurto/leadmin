class Product < ApplicationRecord
  enum allowed_size: {small: 'small', medium: 'medium', large: 'large' }
  enum allowed_color: {white: 'white', black: 'black', green: 'green', red: 'red' }

  has_many :store_products
  has_many :stores, through: :store_products
  belongs_to :category

  before_destroy :check_for_assignments, prepend: true
  
  validates :name, :color, :size, :price, presence: true
  validates :size,  inclusion: { in: allowed_sizes.keys, message: "%{value} is not a valid size." }
  validates :color, inclusion: { in: allowed_colors.keys, message: "%{value} is not a valid color." }
  validates :price, format: { with: /\A\d+(?:\.?\d*)?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
  validates :stock, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :category, presence: true



private

  def check_for_assignments
    if stores.any?
      errors[:base] << "cannot delete submission that has already been paid"
      throw :abort      
    end
  end
end
