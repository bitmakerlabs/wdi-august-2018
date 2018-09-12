
# require('./pizza')
require_relative('pizza')

class Pizzeria

  @@total_pizza_sales = 0
  # @@every_pizzeria = []

  def initialize
    @is_open = false
    @stock = 0
    @pizza_sales = 0
    # @@every_pizzeria << self
  end

  def open
    @is_open = true
  end

  def close
    @is_open = false
  end

  # get toppings
  def order(toppings)
    # check that we have stock to make the pizza
    if @stock < 1 || @is_open == false
      return nil
    end
    # increment total pizzas sold in chain
    @@total_pizza_sales += 1
    @pizza_sales += 1
    # make a pizza
    new_pizza = Pizza.new(toppings)
    # subtract from stock
    # bake pizza
    new_pizza.bake
    # slice pizza
    4.times do
      new_pizza.cut
    end
    # return the pizza
    return new_pizza
  end

  def restock
    if @is_open == false
      @stock += 5
    end
  end

  def self.total_sales
    return @@total_pizza_sales
    # Pizzeria.total_pizza_sales
    # something.other_thing
  end

  def total_sales
    return @@total_pizza_sales
  end

  def sales
    return @pizza_sales
  end

  def self.local_sales(store)
    return @pizza_sales
  end

end

# puts Pizzeria.total_sales

# puts '----'

super_pizza = Pizzeria.new()
awesome_pizza = Pizzeria.new

super_pizza.restock
super_pizza.open

my_pizza = super_pizza.order(['cheese', 'mushrooms'])
puts "Buy from super pizza"
puts super_pizza.sales
puts awesome_pizza.sales
puts Pizzeria.total_sales
puts '---'

my_pizza = super_pizza.order(['cheese', 'mushrooms'])
puts "Buy from super pizza"
puts super_pizza.sales
puts awesome_pizza.sales
puts Pizzeria.total_sales
puts '---'

awesome_pizza.restock
awesome_pizza.open

awesome_pizza.order(['cheese', 'mushrooms'])
puts "Buy from awesome pizza"
puts super_pizza.sales
puts awesome_pizza.sales
puts Pizzeria.total_sales
puts '---'
