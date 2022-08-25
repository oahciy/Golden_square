require "08_diary_entry"

RSpec.describe DiaryEntry do
  it "initialize with title and contents" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
  end

  it "count words in the contents" do
    diary_entry = DiaryEntry.new("title", "contents1, contents2")
    expect(diary_entry.count_words).to eq 2
  end
  
  it "Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm" do
    diary_entry = DiaryEntry.new("title", "contents1 " * 200)
    expect(diary_entry.reading_time(55)).to eq 4
  end

  context "reading chunk" do
    it "returns the string the user has read" do
      entry = DiaryEntry.new("Makers Academy", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
      text = entry.reading_chunk(2,5)
      expect(text).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
    end

    it "returns the next chunk" do
      entry = DiaryEntry.new("Makers Academy", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
      text = entry.reading_chunk(2,5)
      text_2 = entry.reading_chunk(2,5)
      expect(text_2).to eq "eiusmod tempor incididunt ut labore et dolore magna aliqua."
    end
    
    it "returns to the beginning" do
      entry = DiaryEntry.new("Makers Academy", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
      text = entry.reading_chunk(2,5)
      text_2 = entry.reading_chunk(2,5)
      text_3 = entry.reading_chunk(2,5)
      expect(text_3).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
    end
  end
end