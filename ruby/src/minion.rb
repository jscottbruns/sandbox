require 'pry'

@prime_concat = '1'

def generate
  c = 1

  while @prime_concat.length < 10005
    @prime_concat += c.to_s if prime?(c)
    c += 1
  end
  r = rand(10000)
  print @prime_concat #[r..r+5]
  binding.pry
end

def prime?(n)
  m = n/2

  (2..m).each do |i|
    return false if n % i == 0
  end
  true
end

puts generate
