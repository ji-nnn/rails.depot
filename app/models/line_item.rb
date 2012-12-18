class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :quantity, :price
  #attr_accessible :cart_id, :product_id, :cart, :product
  #attr_accessible :cart, :product

  belongs_to :product
  belongs_to :cart
  def total_price
  	#product.price * quantity
  	if price == nil	# migration対応(タスクE:free_practice)
  		0
  	else
  		price * quantity
  	end
  end
end
