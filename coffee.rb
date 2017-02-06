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

    end

#--------------------------------


    def full
      true
    end

    def empty?
      coffee_level == 0
    end

    def full?
      coffee_level == 3
    end

end
