=begin
PROBLEM

Write a method that 
takes a floating point number 
  that represents an angle between 0 and 360 degrees and 
returns a String 
  that represents that angle in degrees, minutes and seconds. 

  You should use 
  a degree symbol (°) to represent degrees, 
  a single quote (') to represent minutes, and 
  a double quote (") to represent seconds. 
  
  A degree has 60 minutes, while a minute has 60 seconds.

input
  Float
    represents an angle
    0 .. 360 degrees

output
  String
    represents that angle in degrees, minutes and seconds. 
rules
Explicit
  (°) to represent degrees
  (') to represent minutes
  (") to represent seconds
  '%(' to begin String
  ')' to end String


One degree = 60 minutes
Oone minute = 60 seconds 

e.g. 91.456 degrees: 
  91 whole degress 
  plus 0.456 of a degree. 
    To state the decimal 0.456 degrees in minutes multiply 0.456*60 to get 27.36 minutes.


Implicit

Restate the problem
- Given a string representing an angle 0-350, return a string representing that angle in dd/mm/ss format. We neet convert the decimal portion to minutes and seconds.

EXAMPLES / TEST CASES
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48") # .73 * 60 => 43.8 minutes // 0.8 * 60 48.0 
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

DATA STRUCTURES


ALGORITHM

High Level
Get number before decimal, set this to degrees
get the decimal, multiply by 60
  Get number before decimal, set this to minutes
  get the decimal, multiply by 60
    Get number before decimal, set this to minutes

Assemble the output String 

Psuedo Code
Given a Float degrees_float: # degrees_float = 76.73

#get degrees and remainder
SET degrees_int, degrees_decimal  = degrees_float.divmod 1 # [76, 0.730000000000004]

IF degrees_decimal == 0, build output and return
ELSE
  #convert degrees_decimal to minutes
  SET minutes_float = degrees_decimal * 60
  SET minutes_int, minutes_decimal = minutes_float.divmod 1 
  IF minutes_decimal == 0, build output and return
  ELSE
    seconds_float = minutes_decimal * 60
    build output and return
=end

def build_output(degrees, minutes, seconds)
  degrees = "%02d" % degrees
  minutes = "%02d" % minutes
  seconds = "%02d" % seconds
  #return "%(#{degrees}°#{minutes}#{seconds})" #need to escape "
  return %(%(#{degrees}#{minutes}#{seconds})) #need to escape "
end

#p build_output(93,2,5)

def dms(degrees_float)
  degrees_int, degrees_decimal = degrees_float.divmod 1
  p degrees_int
  p degrees_decimal

  if degrees_decimal == 0
    return build_output(degrees_int, 0, 0)
  else
    minutes_float = degrees_decimal * 60
    minutes_int, minutes_decimal = minutes_float.divmod 1
    p minutes_int
    if minutes_decimal == 0
      return build_output(degrees_int, minutes_int, 0)
    else
      seconds_float = minutes_decimal * 60
      p seconds_float
      return build_output(degrees_int, minutes_int, seconds_float)
    end
  end
  
end

p dms(360) #== %(76°43'48") # .73 * 60 => 43.8 minutes // 0.8 * 60 48.0 

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48") # .73 * 60 => 43.8 minutes // 0.8 * 60 48.0 
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")