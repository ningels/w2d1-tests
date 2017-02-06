class Coffee

    attr_accessor :coffee_name,
                  :coffee_level,
                  :coffee_potency

    def initialize(coffee_name)
      self.coffee_name = coffee_name
      if coffee_name == "Triple Shot Mocha Frappuccino"
        self.coffee_potency = 0.31
        self.coffee_level = 3
      end

      if coffee_name == "Espresso"
        self.coffee_potency = 0.4
        self.coffee_level = 1
      end
    end

#--------------------------------

    def empty?
      coffee_level == 0
    end

    def full?
      puts "self name #{self.coffee_name}"
      puts "coffee_name #{coffee_name}"
      if coffee_name == "Triple Shot Mocha Frappuccino"
        coffee_level == 3
      elsif coffee_name == "Espresso"
        coffee_level == 1
      end
    end

end

class Espresso < Coffee
    attr_accessor :coffee_name,
                  :coffee_level,
                  :coffee_potency

    def initialize(coffee_name)
      self.coffee_name = coffee_name
      self.coffee_potency = 0.4
      self.coffee_level = 1

    end
#--------------------------------

    def full?
        coffee_level == 1
    end

end
