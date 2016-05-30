class NumLetterCounter
  NUMBERS = {
      1 => 3, 6 => 3,
      2 => 3, 7 => 5,
      3 => 5, 8 => 5,   
      4 => 4, 9 => 4,
      5 => 4, 10 => 3,     
      
     11 => 6,  16 => 7,    
     12 => 6,  17 => 9,
     13 => 8,  18 => 8,  
     14 => 8,  19 => 8,
     15 => 7,  20 => 6,  
      
       

     30 => 6,  60 => 5,
     40 => 5,  70 => 7,
     50 => 5,  80 => 6,  
     		   90 => 6,
     		  100 => 7,
       
       
     1000 => 8,
     0 => 0

  }




  def self.between_21_99(num)

  	first = (num.to_s[0].to_i) * 10
     last = num.to_s[1].to_i

     return (NUMBERS[first] + NUMBERS[last])
 
  end


  def self.greater_than_99(num)
  	first = num.to_s[0].to_i
    last = num.to_s[1..-1].to_i

    add_and = last == 0 ? 0 : 3
    lt_or_gt_20 = last < 20 ? NUMBERS[last] : between_21_99(last)


    if num.to_s.length == 3
      return (NUMBERS[first] + NUMBERS[100] + add_and + lt_or_gt_20)

    else
      return (NUMBERS[first] + NUMBERS[1000] + add_and  + NUMBERS[last])
    end

  end


  def self.count_number_of_letters(start_num, end_num)
    letter_count = 0

    (start_num..end_num).each do |num|
    	
    	letter_count += NUMBERS[num] if num <= 20

    	letter_count += between_21_99(num) if num >= 21 && num <= 99

    	letter_count += greater_than_99(num) if num >= 100

    end 

    return letter_count
  end

end


NumLetterCounter.count_number_of_letters(1, 1000) #21124

