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
#---------------------------------------
# Adventure Mode
# Chris' suggestion, espresso is a different class of coffee...
  def test_humans_can_drink_espresso
    izzy = Human.new "Izzy Espresso"
    tsmf = Espresso.new "Espresso"
    assert tsmf.full?
             #the .send is option so this is like sherri.buy.send(tsmf)
    izzy.buy tsmf
    izzy.drink!
    assert(izzy.alertness.between?(0.1, 0.40))
    refute tsmf.full?
    assert tsmf.empty?
  end

  def test_humans_can_drink_all_the_espresso
    itty = Human.new "Itty"
    tsmf = Espresso.new "Espresso"
    itty.buy tsmf

    1.times { itty.drink! }
    assert tsmf.empty?
    assert itty.alertness >= 0.4
  end




end
