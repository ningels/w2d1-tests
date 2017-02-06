class Human
  attr_accessor :name,
                :alertness,
                :cup

  def initialize(name, alertness=0, type="", num_drinks=0)
    self.name = name
    self.alertness = alertness.to_f
    puts "self #{self.name}"
    puts self.alertness

  end

  def buy(coffee_name)
    self.cup = coffee_name
  end

  def drink!
    self.alertness = alertness + 0.31
    self.cup.coffee_level = self.cup.coffee_level - 1
    puts self.inspect
    puts self.cup.inspect


  end

  def has_coffee?
    alertness > 0
  end

  def needs_coffee?
    alertness <= 0

  end


end
