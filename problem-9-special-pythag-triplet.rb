#stole idea from http://johnnycoder.com/blog/2010/07/05/project-euler-9-ruby/
#apologies

def special_pythag_triplet(num)
  numbers = []

  1.upto(num) do |a|  
    (a+1).upto(num) do |b|

      c = num - a - b
      
      if (a*a + b*b == c*c)
        numbers.push(a, b, c) if ((a + b + c) == num)
      end   
    end
  end

  puts numbers.inspect

  puts numbers.reduce(:*)  
  
  
end

special_pythag_triplet(1000) #31875000