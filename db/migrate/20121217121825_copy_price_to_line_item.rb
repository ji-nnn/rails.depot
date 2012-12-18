class CopyPriceToLineItem < ActiveRecord::Migration
	# タスクE:free_practice
  def up
  	# すべての品目(カートの明細)へ商品(product)の価格(price)をコピーする
  	LineItem.all.each do |line_item|
  		product = Product.find(line_item.product_id)
  		line_item.update_attribute(:price, product.price)
  	end
  end

  def down
  	# すべての品目の価格をクリアする
  	LineItem.all.each do |line_item|
  		line_item.update_attribute(:price, nil)
  	end
  end
end
