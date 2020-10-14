require 'pry'
class ShoppingCart
  attr_accessor :products,
                :cart

  attr_reader :name,
              :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @cart = cart
  end

  def add_product(products)
    @cart << products
  end
end
