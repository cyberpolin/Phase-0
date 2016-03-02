class TimeConverter

  def convert_years_to_hours(year)
    hour_in_year = 365*24
    year*hour_in_year
  end

  def convert_hour_to_minutes(hour)
    hour*60
  end

  def convert_minutes_to_second(minute)
    minute*60
  end

  def convert_decade_to_minutes(decade)
    years = decade * 10
    hours = convert_years_to_hours(years)
    convert_hour_to_minutes(hours)
  end

  def convert_seconds_to_year(seconds)
    minutes = seconds/60
    hours = minutes/60
    days = hours/24
    days/365
  end

  def age_in_seconds(age)
    hours = convert_years_to_hours(age)
    minute = convert_hour_to_minutes(hours)
    convert_minutes_to_second(minute)
  end


end

time = TimeConverter.new
time.convert_decade_to_minutes(1)