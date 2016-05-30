def collatz_sequence(number)
  hash = Hash.new("nothing")

  (1..number).each do |x|
    c_idx = x
    c_num = x
  	hash[c_idx] = []
  	
  	while hash[c_idx].last != 1

  	  if c_num.even?
  	  	c_num = c_num/2 

  	  elsif c_num.odd?
  	  	c_num = (3 * c_num + 1)
  	  end

  	  hash[c_idx] << c_num
  	end

  end

  result = hash.sort_by{|k,v| v.length }.last

  result
end



collatz_sequence(1000000) #837799
#run time 26.660000 (total), 26.842700 (real)