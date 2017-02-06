class Human
  attr_accessor :name,
                :alertness,
                :drink

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
    drink
  end

  def needs_coffee?
    if drink
      false
    else
      true
    end
  end

  def buy(drink)
    @drink = drink
  end

  def drink!
    drink.amount -= 1
    self.alertness += drink.alertness
  end


end
