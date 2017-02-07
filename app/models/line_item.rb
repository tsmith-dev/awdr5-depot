class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  
  def total_price
    price * quantity
  end
  
  def decrement_product_quantity
    self.quantity -= 1
  end
  
end
