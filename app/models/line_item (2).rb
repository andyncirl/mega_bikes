class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :quantity
  belongs_to :product
  belongs_to :cart
  #attr_accessible :cart_id, :product_id
  def total_price
    product.price * quantity
  end
end
