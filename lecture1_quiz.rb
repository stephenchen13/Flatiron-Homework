# Write a program that tells you the following:
#
# Hours in a year. How many hours are in a year? - 6pts
# Minutes in a decade. How many minutes are in a decade? - 6pts
# Your age in seconds. How many seconds old are you? - 6pts
#
# Define at least the following methods to accomplish these tasks:
#
# seconds_in_minutes(1) #=> 60 - 3pts
# minutes_in_hours(1) #=> 60 - 3pts
# hours_in_days(1) #=> 24 - 3pts
# days_in_weeks(1) #=> 7 - 3pts
# weeks_in_years(1) #=> 52 - 3pts
#
# If I am 1,111 million seconds old, how old am I?
# Define an age_from_seconds method - 7pts

def seconds_in_minutes(num_min)
	num_min * 60
end
def minutes_in_hours(num_hours)
	num_hours * 60
end
def hours_in_days(num_days)
	num_days * 24
end
def days_in_weeks(num_weeks)
	num_weeks * 7
end
def weeks_in_years(num_years)
	num_years * 52
end
def hours_in_years(num_years)
  weeks = weeks_in_years(num_years)
  days = days_in_weeks(weeks)
  hours_in_days(days)
end
def minutes_in_years(num_years)
	hours = hours_in_years(num_years)
	minutes_in_hours(hours)
end
def age_in_seconds(num_years)
	minutes = minutes_in_years(num_years)
	seconds_in_minutes(minutes)
end

def minutes_in_seconds(num_seconds)
  num_seconds / 60
end
def hours_in_minutes(num_min)
	num_min / 60
end
def days_in_hours(num_hours)
	num_hours / 24
end
def weeks_in_days(num_days)
	num_days / 7
end
def years_in_weeks(num_weeks)
	num_weeks / 52
end
def age_from_seconds(num_seconds)
  minutes = minutes_in_seconds(num_seconds)
  hours = hours_in_minutes(minutes)
  days = days_in_hours(hours)
  weeks = weeks_in_days(days)
  years_in_weeks(weeks)
end

puts "There are #{hours_in_years(1)} hours in a year."
puts "There are #{minutes_in_years(10)} minutes in a decade."
puts "I am #{age_in_seconds(24)} seconds old."
puts "If I am 1,111 million seconds old, I am #{age_from_seconds(1111000000)} years old."
