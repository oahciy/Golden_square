require "09_DiaryEntry"

RSpec.describe DiaryEntry do
  it "extract phone numbers from contents" do
    entry = DiaryEntry.new("title_1", "my number is 07422586652")
    expect(entry.extract_numbers).to eq ["07422586652"]
  end

  it "extract phone numbers from contents" do
    entry = DiaryEntry.new("title_1", "I dont have a number")
    expect(entry.extract_numbers).to eq []
  end

  it "returns title and contents" do
    entry = DiaryEntry.new("title_1", "my number is 07422586652")
    expect(entry.title).to eq "title_1"
    expect(entry.contents).to eq "my number is 07422586652"
  end

  it "returns reading time when given wpm" do
    entry = DiaryEntry.new("title_1", "my number is 07422586652 and I dont want you to call me.")
    expect(entry.reading_time(2)).to eq 6
  end
end