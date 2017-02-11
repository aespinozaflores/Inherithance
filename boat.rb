class Boat
  def initialize(name="Anonymous")
   @name = name
  end
end

class Powerboat < Boat
  def initialize
    super(name)
    @motor_type = motor_type

  end
  def info
    puts "Name : #{@name}"
    puts "Motor Type: #{@motor_type}"
  end

end

boat1 = Powerboat.new
boat1.info