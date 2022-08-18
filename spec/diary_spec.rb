require "diary"

RSpec.describe DiaryEntry do
  it "returns a title" do
    entry = DiaryEntry.new("Makers Academy", "First week")
    result = entry.title
    expect(result).to eq "Makers Academy"
  end

  it "returns the content" do
    entry = DiaryEntry.new("Makers Academy", "First week")
    result = entry.contents
    expect(result).to eq "First week"
  end

  it "returns the number of words" do
    entry = DiaryEntry.new("Makers Academy", "First week")
    result = entry.count_words
    expect(result).to eq 2
  end

  it "returns the reading time" do
    entry = DiaryEntry.new("Makers Academy", "First week")
    expect(entry.reading_time(2)).to eq 1
  end
end