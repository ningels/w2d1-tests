class Human
  attr_accessor :name,
                :alertness,
                :cup

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness.to_f

  end

  def buy(coffee_name)
    self.cup = coffee_name
  end

  def drink!
        puts "in drink!"
        puts self.inspect
        puts self.cup.coffee_name
    case self.cup.coffee_name
      when "Triple Shot Mocha Frappuccino" then self.alertness = alertness + 0.31
      when "Espresso" then self.alertness = alertness + 0.4
      when "Tea" then self.alertness = alertness + 0.25
    end

    self.cup.coffee_level = self.cup.coffee_level - 1
    puts self.inspect
  end

  def has_coffee?
    alertness > 0
  end

  def needs_coffee?
    alertness <= 0

  end

end
