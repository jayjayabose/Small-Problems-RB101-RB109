=begin
PROBLEM
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and 
returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use ruby's Date and Time classes.


input
- integer (minutes)
- positive or negative

output
- string 
- digit digit : digit digit / HH:MM

rules
Explicit
- time = midnight = `int` minutes

Implicit
- 

EXAMPLES / TEST CASES

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


DATA STRUCTURES
 - integer
 - string


ALGORITHM
1440 = midnight

"reduce" the offset to: 
 - #remainder 1440 : will be -1440 <= x => +1440 
apply the offset. time_in_minutes
  1440 + reduced offsite: will be >= 0
convert time_in_minutes to hours minutes
 - divmod 60
display 



=end
# CODE WITH INTENTION

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def time_of_day(offset_mins)
  offset_negative = offset_mins < 0 == true

  # "reduce" the offset, will be -1440 <= x => +1440 
  reduced_offset_mins = offset_mins.remainder MINUTES_PER_DAY

  # apply the offset, will be: will be >= 0
  time_in_minutes = offset_negative ? MINUTES_PER_DAY + reduced_offset_mins : reduced_offset_mins

  hours, minutes = time_in_minutes.divmod MINUTES_PER_HOUR
  
  "#{format('%02d', hours)}:#{format('%02d', minutes)}"
  # str = 30.to_s.rjust(2,'0')
  # str = format('%02d', 4)
end  

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"