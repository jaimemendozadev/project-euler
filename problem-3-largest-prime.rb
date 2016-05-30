def largest_prime(num)
  
  primes_arr = []

  (2...num).each do |x|
  	break if num <= 1

  	if num % x == 0
  	  while num % x == 0	
  	    num /= x
  	    primes_arr.push(x)
  	  end
  	end
  end   

  primes_arr.map do |factor| 
    factor if (2...Math.sqrt(factor)).each {|num| Math.sqrt(factor) % num != 0} 
  end

  primes_arr.inspect

end

puts largest_prime(600851475143) #6857



=begin 

Read: Why do we check upto the square root of a prime number to determine if it is prime?

http://stackoverflow.com/questions/5811151/why-do-we-check-upto-the-square-root-of-a-prime-number-to-determine-if-it-is-pri

=end















