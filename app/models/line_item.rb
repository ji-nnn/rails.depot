class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :quantity
  #attr_accessible :cart_id, :product_id, :cart, :product
  #attr_accessible :cart, :product
  
  belongs_to :product
  belongs_to :cart
end
