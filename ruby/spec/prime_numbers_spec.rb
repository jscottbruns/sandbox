require 'test/unit'
require_relative '../src/prime_numbers'

class TestPrimeNum < Test::Unit::TestCase
  def setup
    (1..1000).select {|i| PrimeNum.prime?(i)}.take(10)
  end

  def test_prime?

  end

  def teardown

  end
end