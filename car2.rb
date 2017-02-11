class Car2

  def initialize (engine)
    @engine = engine
  end

  def rev_engine
    @engine.make_sound
  end

end

class Engine
  def initimake_sound(sound = "vroom!!")
    @sound = sound
  end

  def make_sound
    puts @sound
  end

end

engine = Engine.new
car = Car2.new(engine)