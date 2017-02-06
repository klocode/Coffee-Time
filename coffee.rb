class Coffee
  attr_accessor :name, :amount

  def initialize(name, amount=3)
    @name = name
    @amount = amount
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
