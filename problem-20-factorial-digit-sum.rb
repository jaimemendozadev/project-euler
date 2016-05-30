def factorial(num)

  if num <= 1
  	1
  else
  	num * factorial(num - 1)
  end  
      
end

def factorial_digit_sum(num)
  num.to_s.split("").map(&:to_i).reduce(:+)
end


factored_result = factorial(100)

puts factorial_digit_sum(factored_result) #648

