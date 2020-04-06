class StoreProduct < ApplicationRecord
  belongs_to :store
  belongs_to :product

  validates :stock, numericality: {only_integer: true, greater_than: -1}
  validate :product_with_no_stock
  
  private
  def product_with_no_stock
    if product.stock<=stock
      errors.add(:product,:product_stock_zero)  # "no tiene suficiente stock para asignar a la tienda #{store.name}")
   
      throw :abort      
    end
  end

end
