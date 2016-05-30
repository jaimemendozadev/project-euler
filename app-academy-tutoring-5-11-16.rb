# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


#  isHere = true
# isNotHere = false

# if isHere
  
#   if 1 == 0 
#     return "yes"
#   else
#     puts "no"
#   end
  
# else
  
#   puts "yes"
  
# end

# 5 12 13  169 



def special_pythag_triplet(num)

  a = 2
  b = 3
  c = 4

  while a < 333
    while b < 500
      while c < 1000
        if a ** 2 + b ** 2 == c ** 2
            return a * b * c if a + b + c == 1000
        end
        c += 1
      end
      
      b += 1
      c = b + 1
  
    end
    
    a += 1
    b = a + 1
  
  end
  

end


puts special_pythag_triplet(1000)

# 2.upto(333) do |i|
    # i.upt(500)
    

def findFiveHundred(numberOfFactors)
  count = 1
  triangleNumber = 0
  factors = 0;
  while(factors <= numberOfFactors)
    triangleNumber = triangleNumber + count
    factors = countFactors(triangleNumber)

    if(factors > numberOfFactors)
      return triangleNumber
    end
    count += 1
  end


end

def countFactors(number)
  count = 0
  step = 1
  while(step * step  <= number)
    if(number % step == 0)
      count += 2
    end
    step += 1
  end
  count
end

    

  
  
  
  
  
