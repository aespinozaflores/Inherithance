require_relative 'vehicle'
class Truck < Vehicle

  attr_accessor :cargo

  def load_bed
  puts "loading bed"
  end

end

truck = Truck.new

truck.odometer = 22134
truck.gas_used = 732
truck.cargo = 3

puts truck.instance_variables
