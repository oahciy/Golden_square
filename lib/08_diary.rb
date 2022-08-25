class Diary
  def initialize
    @list = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
    @list << entry
  end

  def all
    @list
  end

  def count_words
    return @list.sum(&:count_words) #same as: @list.sum { |entry| entry.count_words }
    # sum = 0
    # count = 0
    # while count < @list.length do
    #   sum += @list[count].count_words
    #   count += 1
    # end
    # sum
  end

  def reading_time(wpm)
    (count_words.to_f / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    fail "wpm should not be 0" unless wpm.positive?
    readable_entries = @list.filter { |entry| entry.reading_time(wpm) <= minutes }
    sorted_by_longest = readable_entries.sort_by { |entry| entry.count_words }
    sorted_by_longest.last
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end 
end