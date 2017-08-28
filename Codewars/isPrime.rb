def isPrime(num)
  factors = []

  1.upto(Math.sqrt(num).to_i) do |i|
    factors += [i, num / i] if num % i == 0
    return false if factors.length > 2
  end

  factors.length == 2
end
