require_relative 'animal'
class Armadillo < Animal

  def move(destination)
    puts "#{@name} is unrrolling"
    super
  end
end



armadillo = Armadillo.new
armadillo.name= ("jack")
armadillo.age=(9)
armadillo.move("burrow")

armadillo2 = Armadillo.new
armadillo2.name= ("Mary")
armadillo2.age=(2)
armadillo2.move("burrow")

  puts armadillo2.instance_variables