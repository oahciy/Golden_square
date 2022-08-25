class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @chunk_been_read = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split.length
  end

  def reading_time(wpm)
    (count_words.to_f / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    words_to_read = wpm * minutes
    if @chunk_been_read >= count_words
      @chunk_been_read = 0
    end
    chunk = @contents.split[@chunk_been_read, words_to_read].join(" ")
    @chunk_been_read += words_to_read
    return chunk
  end
end

# finished with Moses on 25th Aug