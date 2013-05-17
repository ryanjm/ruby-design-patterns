# Bad way

class Coffee
  def cost
    2
  end

  def origin
    "S."
  end
end

class WhiteCoffee
  def cost
    2.4
  end
end

# Good(ish) way

module Decorator
  def initialize(decorated)
    @decorated = decorated
  end

  def method_missing(method, *args)
    puts "Missing #{method} in #{self.class}"
    args.empty? ? @decorated.send(method) : @decorated.send(method, args)
  end
end

class Milk
  include Decorator

  def cost
    @decorated.cost + 0.4
  end
end

class Whip
  include Decorator

  def cost 
    @decorated.cost + 0.2
  end
end

class Sprinkles
  include Decorator

  def cost
    @decorated.cost + 0.3
  end
end

# puts "Whip + Coffee = #{Whip.new(Coffee.new).cost}"
# puts "+ Springles + Milk = #{Sprinkles.new(Whip.new(Milk.new(Coffee.new))).cost}"

c = Coffee.new
puts Whip.new(c).cost
puts Whip.new(c).origin