class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end
  
  def title
    @title
  end

  def contents
    @contents
  end

  def reading_time(wpm)
    (@contents.split.length / wpm.to_f).ceil
  end

  def extract_numbers
    #extract phone numbers from contents
    @contents.scan(/\d{10,11}/)
  end 
end