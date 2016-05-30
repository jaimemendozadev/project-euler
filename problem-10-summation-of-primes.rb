=begin
def is_a_prime(num)

  (2...num).each do |x|
  	return false if num % x == 0
  end

  return true
end


def sum_of_primes(num)
  prime_num = 3
  result = [2]

  while result.last <= num
    if is_a_prime(prime_num) == true
      result.push(prime_num)
      prime_num += 1
    else
      prime_num += 1
    end

    puts result.inspect
  end 

  result.inspect

end

puts sum_of_primes(2000000)

=end

#works with Sieve of Eratosthenes
def sieve(max=100)
  sieve = []
  (2..max).each { |i| sieve[i] = i }
  (2..Math.sqrt(max)).each do |i|
    (i*i).step(max, i) { |j| sieve[j] = nil } if sieve[i]
  end
  sieve.compact.reduce(:+)
end

puts sieve(2000000)



