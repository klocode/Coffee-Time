class Coffee
  attr_accessor :name, :amount, :alertness

  def initialize(name, amount=3, alertness=0.31)
    @name = name
    @amount = amount
    @alertness = alertness
  end

  def full?
    if amount == 3
      true
    else
      false
    end
  end

  def empty?
    if amount == 0
      true
    else
      false
    end
  end

end

class Tea < Coffee

  def initialize(name, amount=3, alertness=0.25)
    @name = name
    @amount = amount
    @alertness = alertness
  end

end
