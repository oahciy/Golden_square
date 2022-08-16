def reading_time(text)
  reading_time_sec = 0.3 * text.split.length
  if text == ""
    return "There is nothing to read."
  else
    reading_time_min = (reading_time_sec / 60).to_i
    reading_time_sec = (reading_time_sec % 60).floor(1)
    return "Your reading time is #{reading_time_min} minute(s) #{reading_time_sec} second(s)"
  end
end