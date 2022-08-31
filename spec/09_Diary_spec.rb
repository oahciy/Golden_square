require "09_Diary"

RSpec.describe Diary do
  it "returns the list of all entries" do
    diary = Diary.new
    expect(diary.list).to eq []
  end
end