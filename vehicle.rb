class Vehicle
  attr_accessor :odometer, :gas_used
  def accelerate
    puts "Floor it!"
  end

  def mileage
    return @odometer/@gas_used
  end

  def sound_horn
    puts "BEEP! BEEP!"
  end

  def steer
    puts "Turning left"
  end
end