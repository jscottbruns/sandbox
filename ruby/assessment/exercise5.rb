class Inventory
  def initialize(inventory = ['Toyota Camry'])
    @in_stock = inventory
  end

  def in_stock?(vehicle)
    @in_stock.include?(vehicle.info)
  end
end

module Vehicle
  def inventory
    @inventory ||= Inventory.new(['Nissan Leaf'])
  end

  def in_stock?
    inventory.in_stock?(self)
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
stocked = vehicle.in_stock?

puts "Stocked: #{stocked}"