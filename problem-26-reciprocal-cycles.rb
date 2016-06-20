def is_a_prime?(num)
  return true if num == 2

  (2...num).each {|x| return false if num % x == 0 }

  return true

end


def count_the_cycles(num)
  cycles = 1
  initial_calculation = 10 % num

  return 1 if initial_calculation == 0

  while initial_calculation != 1
  	initial_calculation = (initial_calculation * 10) % num
  	cycles += 1
  end

  cycles

end


def reciprocal_cycles(num)
  num_range = [*2..num]

  recip_hash = Hash.new(0)

  prime_range = num_range.reverse.map{|x| x if is_a_prime?(x) == true }.compact


  prime_range.each do |p|
    recip_hash[p] = count_the_cycles(p)   
  end

  recip_hash.sort_by {|key, value| value}.last.first

end

puts reciprocal_cycles(1000) #s/b 983

