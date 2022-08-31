require "09_Diary"
require "09_DiaryEntry"

RSpec.describe "integration test" do
  it "lists all the entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("title_1", "I want a dog")
    entry_2 = DiaryEntry.new("title_2", "I want a cat")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.list).to eq [entry_1, entry_2]
  end

  it "select the entry by its title and return its contents" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("title_1", "I want a dog")
    entry_2 = DiaryEntry.new("title_2", "I want a cat")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.reader("title_1")).to eq "I want a dog"
  end
  
  it "selects readable entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("title_1", "I want a dog")
    entry_2 = DiaryEntry.new("title_2", "I want a small cat")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.select_readable_entries(2, 2)).to eq [entry_1]
  end

  it "return a list of extracted numbers from all entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("title_1", "my number is 07422586652")
    entry_2 = DiaryEntry.new("title_2", "I want a small cat")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.contacts).to eq ["07422586652"]
  end

  it "return a list of extracted numbers from all entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("title_1", "my number is 07422586652")
    entry_2 = DiaryEntry.new("title_2", "I want a small cat, contact 07595121232")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.contacts).to eq ["07422586652", "07595121232"]
  end
end