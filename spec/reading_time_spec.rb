require "reading_time"

describe "reading_time method" do
  it "returns 'There is nothing to read.' if passed ''." do
    expect(reading_time("")).to eq "There is nothing to read."
  end

  it "returns 'Your reading time is 0 minute(s) 0.3 second(s)' when passed 'one'" do
   expect(reading_time("one")).to eq "Your reading time is 0 minute(s) 0.3 second(s)"
  end
end