class PrimeNum
  def self.prime?(n)
    m = n/2
    (2..m).each do |i|
      return false if n % i == 0
    end
    true
  end
end