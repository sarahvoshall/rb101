def time_of_day(number)
  if number.positive?
    minutes = 0
    hours = 0
    while number.positive?
      minutes += 1
      if minutes == 60
        hours += 1
        if hours == 24
          hours = 0
        end
        minutes = 0
      end
      number -= 1
    end
  elsif number.negative?
    minutes = 60
    hours = 23
    while number.negative?
      minutes -= 1
      if minutes.zero?
        hours -= 1
        if hours.negative?
          hours = 23
        end
        minutes = 60
      end
      number += 1
    end
  elsif number.zero?
    hours = 0
    minutes = 0
  end
  p format('%02d', hours) + ':' + format('%02d', minutes)
end

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day_2(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('02d:%02d', hours, minutes)
end

time_of_day(0)
time_of_day(-3)
time_of_day(35)
time_of_day(-1437) # 00:03
time_of_day(3000)
time_of_day(800)
time_of_day(-4231) # 01:29
