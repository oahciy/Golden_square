def reading_time(text)
  words_count = text.split.length
  reading_time_sec = 0.3 * words_count
  if text == ""
    return "There is nothing to read."
  elsif words_count >= 200
    reading_time_min = (reading_time_sec / 60).to_i
    reading_time_sec = (reading_time_sec % 60).floor(1)
    return "Your reading time is #{reading_time_min} minute(s) #{reading_time_sec} second(s)"
  elsif words_count < 200
    return "Your reading time is 0 minute(s) #{reading_time_sec} second(s)"
  end
end