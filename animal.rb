class Animal
  attr_accessor :name, :age

  def name=(value)
    if value ==""
      raise "Name can´t be blank"
    end
    @name = value
  end

  def age=(value)
    if value <0
      raise "An age of #{value} isn't valid"
    end
  @age = value
  end

  def talk
      puts "animal is talking"
    end

  def move(destination)
    puts "#{name} is moving to #{destination}"
  end
  def report_age
    puts "#{name} is #{age} old"
  end
end

class Armadillo < Animal

end
