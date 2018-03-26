class Inventory
  attr_reader :in_stock
  def initialize(inventory = ['Toyota Camry'])
    @in_stock = inventory
  end

  def update_stock(vehicle)
    @in_stock << vehicle.info
  end
end

module Vehicle
  def inventory
    @inventory ||= Inventory.new(['Nissan Leaf'])
  end

  def in_stock
    inventory.in_stock
  end

  def update_stock
    inventory.update_stock(self)
  end
end

class Car
  include Vehicle

  attr_reader :info

  def initialize(info='Toyota Camry')
    @info = info
  end
end

vehicle = Car.new('Nissan Leaf')
vehicle.update_stock
in_stock = vehicle.in_stock

puts "In stock: #{in_stock}"