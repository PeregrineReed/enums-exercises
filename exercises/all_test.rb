gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    assert all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      # Your code goes here
      number.zero?
    end
    refute all_zeros
  end

  def test_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    # Your code goes here
    all_gone = words.all? { |word| word =~ /gone/ }
    assert all_gone
  end

  def test_not_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    # Your code goes here
    all_gone = words.all? { |word| word =~ /gone/ }
    refute all_gone
  end

  def test_all_empty
    strings = ["", "", "", "", "", "", ""]
    # Your code goes here
    all_empty = strings.all? { |string| string.empty? }
    assert all_empty
  end

  def test_not_all_empty
    strings = ["", "", "", "full", "", "", ""]
    # Your code goes here
    all_empty = strings.all? { |string| string.empty? }
    refute all_empty
  end

  def test_not_all_uppercase
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    # Your code goes here
    all_caps = words.all? { |word| word.upcase == word }
    refute all_caps
  end

  def test_all_lies
    lies = [false, false, false, false]
    # Your code goes here
    all_lies = lies.all? { |lie| lie == false }
    assert all_lies
  end

  def test_all_multiples_of_7
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    # Your code goes here
    all_multiples_of_7 = numbers.all? { |number| number % 7 == 0 }
    assert all_multiples_of_7
  end

  def test_not_all_3_digits_long
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    # Your code goes here
    all_3_digits = numbers.all? { |number| number < 1000 }
    refute all_3_digits
  end

  def test_all_4_letter_words
    words = ["love", "hate", "fire", "bird", "call"]
    # Your code goes here
    all_4_letters = words.all? { |word| word.length == 4 }
    assert all_4_letters
  end

end
