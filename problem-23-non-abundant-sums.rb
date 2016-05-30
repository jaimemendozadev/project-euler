def proper_divisors(num)
  return [0] if num == 1

  proper_divisors = []

  (1...num).each do |x|
  	proper_divisors << x if num % x == 0
  end

  proper_divisors
end



def abundant_nums(num)
  abundant_nums = []

  combos = []

  (1...num).each do |x|
  	abundant_nums << x if proper_divisors(x).reduce(:+) > x
  end

  abundant_nums.each do |x|
    abundant_nums.each do |y|
      combos << x + y
    end
  end

 

  result = [*1..num] - combos

  result.reduce(:+)

  
end

puts abundant_nums(28123)#4179871

#found the answer at https://github.com/kanakiyajay/euler/blob/master/problem23.rb
#still don't understand the underlying concept