require 'test_helper'

class CartTest < ActiveSupport::TestCase
	fixtures :carts
  fixtures :products
  # test "the truth" do
  #   assert true
  # end

  test 'cart should create a new line item when adding a new product' do
  	cart = Carts.new
    line_item1 = cart.add_product(products(:ruby).id)
    line_item2 = cart.add_product(products(:ruby).id)

    assert_same line_item1, line_item2
  end

end
