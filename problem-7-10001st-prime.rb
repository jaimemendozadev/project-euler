def is_a_prime(num)
  (2...num).each do |x|
  	return false if num % x == 0
  end

  return true
end


def find_the_prime(num)
  prime_arr = [2, 3, 5, 7, 11, 13]
  next_prime = prime_arr.last + 1

  until prime_arr.length == num
  	prime_arr.push(next_prime) if is_a_prime(next_prime) == true

  	next_prime += 1
  end

  prime_arr.last

end

puts find_the_prime(10001) #104743


