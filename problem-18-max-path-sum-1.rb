TRIANGLE = [
%W[75].map(&:to_i),
%W[95 64].map(&:to_i),
%W[17 47 82].map(&:to_i),
%W[18 35 87 10].map(&:to_i),
%W[20 04 82 47 65].map(&:to_i),
%W[19 01 23 75 03 34].map(&:to_i),
%W[88 02 77 73 07 63 67].map(&:to_i),
%W[99 65 04 28 06 16 70 92].map(&:to_i),
%W[41 41 26 56 83 40 80 70 33].map(&:to_i),
%W[41 48 72 33 47 32 37 16 94 29].map(&:to_i),
%W[53 71 44 65 25 43 91 52 97 51 14].map(&:to_i),
%W[70 11 33 28 77 73 17 78 39 68 17 57].map(&:to_i),
%W[91 71 52 38 17 14 91 43 58 50 27 29 48].map(&:to_i),
%W[63 66 04 68 89 53 67 30 73 16 69 87 40 31].map(&:to_i),
%W[04 62 98 27 23 09 70 98 73 93 38 53 60 04 23].map(&:to_i)]

R_TRIANGLE = []

(14).downto(0) {|x| R_TRIANGLE <<  TRIANGLE[x] } 

R_TRIANGLE.each {|x| puts "#{x}\n"}




def max_path_sum(triangle)

  next_row_idx = 1  
  idx = 0

  triangle.each do |row|

    while idx < row.length - 1

      if row[idx] > row[idx + 1]    
        triangle[next_row_idx][idx] += row[idx] 


      else #if row[idx + 1] > row[idx]
     	  triangle[next_row_idx][idx] += row[idx + 1] 
      end
    
      idx += 1
    end

    idx = 0
    next_row_idx += 1

  end

  triangle.last.first

end 



puts max_path_sum(R_TRIANGLE) 
#answer s/b 1074
#got the right answer
#still iffy on how dynamic programming works
 	
