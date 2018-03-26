class Vehicle
  def initialize(args={})
    @make  = args[:make] ||= 'Nissan'
    @model = args[:model] ||= 'Leaf'
    post_init(args)
  end

  def info
    {make: @make, model: @model}.merge(local_info)
  end
end

class Car < Vehicle
  def post_init(args)
    @color = args[:color] ||= 'Blue'
  end

  def local_info
    {color: @color}
  end
end

vehicle = Car.new(model: 'Pathfinder').info
puts vehicle