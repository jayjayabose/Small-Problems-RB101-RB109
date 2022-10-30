=begin
PROBLEM
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.



Write two methods that 
each take a time of day in 24 hour format, and 
return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.


input
- string: 'hh:mm'
- 0=< hh <=24
- 0=< mm <=59

output; after midnight
- integer
- 0 .. 1339

output: before midnight
- integer
- -1339 ..0

rules
Explicit
- input is time in 24 hours, from midnight

Implicit
- 

EXAMPLES / TEST CASES
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754  # 12 * 60 + 34 
before_midnight('12:34') == 686 # / (12 * 60 + 34) - 1440
after_midnight('24:00') == 0    # 24 * 60 
before_midnight('24:00') == 0   # (24 * 60) - 1440



DATA STRUCTURES
 

ALGORITHM
after midnight
 - convert to minutes
    - get hours and minutes: split, convert to integer
    - get total minutes: hours * 24 + minutes 
 - if 1400 return 0
 - else return minutes

before midnight

 - after midnight ()
 - if zero, return zero
- else return - 1440

=end
# CODE WITH INTENTION

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(hrs_mins_time)
  hrs, mins = hrs_mins_time.split(':')
  (hrs.to_i * MINUTES_PER_HOUR + mins.to_i) % MINUTES_PER_DAY

  # hours, minutes = time_str.split(':').map(&:to_i)
  # (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
  
end

def before_midnight(hrs_mins_time)
  mins_after_midnight = after_midnight(hrs_mins_time)
  (MINUTES_PER_DAY - mins_after_midnight) % MINUTES_PER_DAY

end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754  # 12 * 60 + 34 
p before_midnight('12:34') == 686 # / (12 * 60 + 34) - 1440
p after_midnight('24:00') == 0    # 24 * 60 
p before_midnight('24:00') == 0   # (24 * 60) - 1440