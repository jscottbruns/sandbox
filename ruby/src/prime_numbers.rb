require "benchmark"

$perms

class PrimeNum
  def self.prime?(n)
    m = n/2
    (2..m).each do |i|
      $perms += 1
      return false if n % i == 0
    end
    true
  end

  def self.primeroot?(n)
    m = Math.sqrt(n).to_i
    (2..m).each do |i|
      $perms += 1
      return false if n % i == 0
    end
    true
  end
end

c = ARGV[0].to_i

print "Calculating all primes up to #{c}..."

time = Benchmark.measure do
  $perms = 0
  primes = []
  (2..c).each do |i|
    primes << i if PrimeNum.prime?(i)
  end
  puts "Total primes: #{primes.count}"
end

puts "Total permutations for method 1: #{$perms}"
puts "Runtime for method 1: #{time}\n"

time = Benchmark.measure do
  $perms = 0
  primes = []
  (2..c).each do |i|
    primes << i if PrimeNum.primeroot?(i)
  end
  puts "Total primes: #{primes.count}"
end

puts "Total permutations for method 2: #{$perms}"
puts "Runtime for method 2: #{time}"


