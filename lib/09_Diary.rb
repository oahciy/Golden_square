class Diary
  def initialize
    @diary = []
  end

  def add(entry) # entry is an instance of DisryEntry
    # entry gets added to the @diary
    # Returns nothing
    @diary << entry
  end

  def list
    # Returns a list of entries in @diary
    @diary
  end
  
  def reader(title)
    #select the entry by its title and return its contents
    @diary.each do |entry|
      return entry.contents if entry.title == title
    end
  end

  def select_readable_entries(wpm, minutes)
    #return a list of readable diary entries to read based on how much time(minutes) I have and my reading speed(wpm)
    @diary.select do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end

  def contacts
    # return a list of extracted numbers from all entries
    @diary.map do |entry|
      next if entry.extract_numbers == []
      entry.extract_numbers.join
    end.compact
  end
end