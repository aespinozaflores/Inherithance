require_relative 'vehicle'
class Car < Vehicle
  def odometer=(value)
    @banana = value
  end

  def gas_used=(value)
    @apple = value
  end

  def odometer
    @banana
  end

  def gas_used
    @apple
  end
end


car = Car.new

car.odometer = 24120
car.gas_used = 280
puts car.instance_variables

car.steer