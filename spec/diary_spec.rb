require "diary"

RSpec.describe DiaryEntry do
  it "returns a title" do
    entry = DiaryEntry.new("Makers Academy", "First week")
    result = entry.title
    expect(result).to eq "Makers Academy"
  end
end