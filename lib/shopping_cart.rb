require 'pry'
class ShoppingCart
  attr_accessor :products

  attr_reader :name,
              :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(products)
    @products << products
  end
end
