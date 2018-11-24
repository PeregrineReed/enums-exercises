gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class OneTest < Minitest::Test

  def test_one_more
    words = ["bigger", "better", "more", "improved", "advantageous"]
    exactly_one = words.one? do |word|
      word == 'more'
    end
    assert exactly_one
  end

  def test_not_even_one_ring
    ornaments = ["bracelet", "anklet", "earring"]
    exactly_one_ring = ornaments.one? do |ornament|
      # Your code goes here
      ornament == 'ring'
    end
    refute exactly_one_ring
  end

  def test_not_just_one_ring
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    # Your code goes here
    exactly_one_ring = ornaments.one? do |ornament|
      ornament == 'ring'
    end
    refute exactly_one_ring
  end

  def test_one_time
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    # Your code goes here
    exactly_one_time = words.one? { |word| word == "time" }
    assert exactly_one_time
  end

  def test_one_double_digit_number
    numbers = [8, 2, 10, 333, 9, 101]
    # Your code goes here
    exactly_one_double_digit = numbers.one? do |number|
      number.inspect[0] == number.inspect[1]
    end
    assert exactly_one_double_digit
  end

  def test_not_one_even_number
    numbers = [3, 20, 81, 10, 391, 32]
    # Your code goes here
    exactly_one_even_number = numbers.one? { |number| number.even? }
    refute exactly_one_even_number
  end

end
