class TimeConverter
  def years_to_months(years)
    years * 12
  end

  def months_to_days(months)
    months * 30
  end

  def days_to_hours(days)
    days * 24
  end

  def hours_to_minutes(hours)
    hours * 60
  end

  def minutes_to_seconds(minutes)
    minutes * 60
  end

  def seconds_to_minutes(seconds)
    seconds / 60
  end

  def minutes_to_hours(minutes)
    minutes / 60
  end

  def hours_to_days(hours)
    hours / 24
  end

  def days_to_months(days)
    days / 30
  end

  def months_to_years(months)
    months / 12
  end
end
