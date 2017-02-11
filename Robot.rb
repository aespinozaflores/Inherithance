class Robot
 attr_accessor :name
 def activate
    puts "#{@name} is powering up"
  end
  def move(destination)
    puts "#{name} is walking to #{destination}"
  end
end

class TankBot < Robot
  attr_accessor :weapon
  def attack
    puts "#{@name} fires with a #{@weapon}"
  end
  def move(destination)
    puts "#{@name} is rolling to #{destination}"
  end

end


class SolarBot < Robot

  def activate
    puts "#{@name} is deploying a solar panel"
    super
  end
end


tank = TankBot.new
tank.name ="Hugo"
tank.weapon = "laser"
tank.activate
tank.move("Test Dummy")
tank.attack

sunny = SolarBot.new
sunny.name = "Sunny"
sunny.activate
sunny.move"tanning bed"