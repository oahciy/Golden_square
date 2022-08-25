require '08_diary.rb'
require '08_diary_entry.rb'

RSpec.describe "Diary Integration" do
    it "adds Diary Entry to Diary" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("title", "contents")
        diary.add(diary_entry)
        expect(diary.all).to eq [diary_entry]
    end

    it "returns the number of words in all diary entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title1", "cotents1 " * 100)
      diary_entry_2 = DiaryEntry.new("title2", "content2 " * 300)
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 400
    end

    it "returns reading time in minutes if the user were to read all entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title1", "cotents1 " * 100)
      diary_entry_2 = DiaryEntry.new("title2", "content2 " * 300)
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(175)).to eq 3
    end

    it "should fail if wpm or minutes equals to 0" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title1", "cotents1 " * 100)
      diary.add(diary_entry_1)
      expect { diary.find_best_entry_for_reading_time(0, 0) }.to raise_error "wpm should not be 0"
    end

    context "only one entry" do
      it "returns the instance if readable" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "cotents1 " * 100)
        diary.add(diary_entry_1)
        expect(diary.find_best_entry_for_reading_time(200,1)).to eq diary_entry_1
      end

      it "returns nil if unreadable" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "cotents1 " * 100)
        diary.add(diary_entry_1)
        expect(diary.find_best_entry_for_reading_time(50,1)).to eq nil
      end
    end

    context "multiple entries" do
      it "find the closest entry <= the user could read" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "cotents1 " * 100)
        diary_entry_2 = DiaryEntry.new("title2", "content2 " * 300)
        diary_entry_3 = DiaryEntry.new("title3", "content3 " * 500)
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        diary.add(diary_entry_3)
        expect(diary.find_best_entry_for_reading_time(200, 2)).to eq diary_entry_2
      end
    end
  
end