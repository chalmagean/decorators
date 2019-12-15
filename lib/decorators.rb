# The Decorator pattern allows us to add behavior to a given object without
# having to add that behavior to the class of the object.

class Drink
  def price
    cost + 10
  end

  def cost
    1
  end
end

class Tea < Drink
end

class Coffee < Drink
end

module HoneyDecorator
  def cost
    4
  end
end

module MilkDecorator
  def cost
    2
  end
end

tea = Tea.new
coffee = Coffee.new

puts "Price of 1 cup of tea: #{tea.price}"
puts "Price of 1 cup of coffee: #{coffee.price}"

latte = coffee.extend(MilkDecorator)
puts "Price of 1 cup of a latte: #{latte.price}"

sweet_latte = latte.extend(HoneyDecorator)
puts "Price of 1 cup of a sweet latte: #{sweet_latte.price}"
