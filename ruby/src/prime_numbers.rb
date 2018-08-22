class PrimeNum
  def self.prime?(n)
    m = n/2
    (2..m).each do |i|
      return false if n % i == 0
    end
    true
  end
end

c = ARGV[0].to_i
primes = []

(2..c).each do |i|
  primes << i if PrimeNum.prime?(i)
end

puts primes.join(', ')