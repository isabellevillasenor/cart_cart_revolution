require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ProductTest < Minitest::Test

  def setup
    @cart = ShoppingCart.new("King Soopers", "30items")
  end

  def test_it_exists
    assert_instance_of ShoppingCart, @cart
  end

  def test_it_has_a_name
    assert_equal "King Soopers", @cart.name
  end

  def test_it_knows_capacity
    assert_equal 30, @cart.capacity
  end

  def teset_it_has_products_array
    assert_equal [], @cart.products
  end
#
#   def test_it_can_add_new_products
#     #this and add_product method aren't working, need to be revisited
#     @product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
#     @product2 = Product.new(:meat, 'chicken', 4.50, '2')
#     products = [@product1, @product2]
#     cart = ShoppingCart.new("King Soopers", "30items")
# binding.pry
#     assert_instance_of @product1, products.add_product(@product1)
#     assert_instance_of @product2, products.add_product(@product2)
#   end
end
