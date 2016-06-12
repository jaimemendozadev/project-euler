def check_for_repeats(float)

 decimal_hash = Hash.new(0)

 decimal_array = float.to_s.gsub(/\d+\./,"").split("").map(&:to_i)


 decimal_array.uniq.length

=begin
 decimal_array.each do |n| 
   decimal_hash[n]+=1
 end

 decimal_hash.inspect


 decimal_hash.select! {|k, v| v > 1 }

 decimal_hash.empty? ? nil : decimal_hash.keys.length


=end
end


def reciprocal_cycles(num)
  reciprocal_hash = {}
  
  (2..num).each do |n|
  	float_num = 1/n.to_f

  	#puts float_num
  	
  	reciprocal_hash[n] = check_for_repeats(float_num)
  end

  reciprocal_hash.delete_if {|k, v| v < 1 }.sort {|a, b| a <=> b}.inspect
    
end

puts reciprocal_cycles(1000) #s/b 983

