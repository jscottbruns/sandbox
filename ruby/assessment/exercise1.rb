require 'ostruct'

class Car
  attr_reader :info
  def initialize(args={make: 'Toyota', model: 'Camry'})
    @info = {make: args[:make], model: args[:model]}
  end
end

module VehicleFactory
  def self.build(vehicle, info=['Audi', 'A8'])
    vehicle.new(create(info))
  end

  def self.create(info)
    OpenStruct.new(make: info[0], model: info[1])
  end
end

car = VehicleFactory.build(Car)
info = car.info

puts "Info is: #{info}"