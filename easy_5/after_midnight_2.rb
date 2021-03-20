HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..4].to_i
  total_mins = hours * MINUTES_PER_HOUR + minutes
  if total_mins == MINUTES_PER_DAY
    return 0 
  else 
    total_mins
  end
  
end

def before_midnight(time)
  total_mins = MINUTES_PER_DAY - after_midnight(time)
  total_mins = 0 if total_mins == MINUTES_PER_DAY
  total_mins
end

p after_midnight("00:00")
p before_midnight("00:00")
p after_midnight("12:34")
p before_midnight("12:34")
p after_midnight("24:00")
p before_midnight("24:00")
  