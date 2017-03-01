class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle


  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :gears, :weight

  def initialize(input_options)
    @gears = input_options[:gears]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

# gears, weight
bike1 = Bike.new(gears: 21, weight: 30)
p bike1.gears
p bike1.weight

# car1 = Car.new
# car1.honk_horn
