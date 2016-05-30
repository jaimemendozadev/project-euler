def is_leap?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end


def counting_sundays(start_yr, end_yr)
   
  days_of_week= ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"]

  calendar_months = {"Jan": 31, "Feb": 28, "Mar": 31, 
  					 "Apr": 30, "May": 31, "June": 30, 
  					 "July": 31, "Aug": 31, "Sept": 30, 
  					 "Oct": 31, "Nov": 30, "Dec": 31}
  

  #start params
  day = 1
  week = 
  range = (start_yr..end_yr)
  sunday_counter = 0
  

  range.each do |year|

  	calendar_months.each do |month, days|

      #check for leap year
  	  number_of_days = is_leap?(year) && month == "Feb" ? 29 : days

  	  (1).upto(number_of_days) do |x|

        sunday_counter += 1 if days_of_week[day] == "Sun" && x == 1
  
        days_of_week[day] == "Sun" ? day = 0 : day += 1
  	    
  	  end
      
  	end


  end

  sunday_counter
  
end

puts counting_sundays(1901, 2000) #171 
