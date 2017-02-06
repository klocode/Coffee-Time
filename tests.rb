require 'minitest/autorun'

require './human'
require './coffee'

class CaffeineTest < MiniTest::Test
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1
  end

  def test_humans_need_coffee
    randy = Human.new "Randy"
    refute randy.has_coffee?
    assert randy.needs_coffee?
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full?

    sherri.buy tsmf
    sherri.drink!
    assert(sherri.alertness.between?(0.1, 0.33))
    refute tsmf.full?
    refute tsmf.empty?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf

    3.times { trevor.drink! }
    assert tsmf.empty?
    assert trevor.alertness > 0.9
  end
end

class EspressoTest < MiniTest::Test

  def test_trying_to_make_espresso_my_bitch
    bob = Human.new "Bob"
    espresso = Coffee.new("Espresso", 1, 0.4)

    bob.buy espresso
    bob.drink!
    assert espresso.empty?
    assert bob.alertness > 0.3

  end

end

class TeaTest < MiniTest::Test

  def test_tea_time
    goat = Human.new "Tom Brady"
    tea = Tea.new("Tea")
    goat.buy tea
    3.times { goat.drink! }
    assert tea.empty?
    assert goat.alertness < 1.0
  end

end
