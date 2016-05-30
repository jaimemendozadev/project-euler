class AmicableNums
  
  def initialize(limit)
  	return 0 if limit <= 1

  	@limit = limit
  	@amicable_nums_arr = []
  end


  def proper_divisors(num)
    return [0] if num == 1

    proper_divisors = [] 
     
    (1...num).each do |x|
      proper_divisors << x if num % x == 0
    end
    
    proper_divisors
    
  end





  def sum_of_amicable_nums
  	(2...@limit).each do |x|

  	  a = proper_divisors(x).reduce(:+)
  	  b = proper_divisors(a).reduce(:+)  	  

  	  if x == b && x != a
  	  	@amicable_nums_arr.include?(x) ||
  	  	@amicable_nums_arr.include?(a) ? next : @amicable_nums_arr.push(x, a)
  	  end
  	  	
  	end

  	@amicable_nums_arr.uniq.reduce(:+)
  	
  end
end


AmicableNums.new(10000).sum_of_amicable_nums 
#31626
#[220, 284, 1184, 1210, 2620, 2924, 5020, 5564, 6232, 6368]