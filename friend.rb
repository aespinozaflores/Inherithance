require_relative 'Person'

class Friend < Person
  def greeting
    basic_greeting = super
 puts "#{basic_greeting} Glad to see you!"
  end
  def greet_by_name(name)
    basic_greeting = super
    "#{basic_greeting} Glad to see you"
  end
end

Friend.new.greeting
puts Friend.new.greet_by_name("Maria")