require 'count_words'

describe "count_words method" do
  it "return the number of words in that string" do
    expect(count_words("My name is Yichao and I live in Oxford")).to eq 9
  end

  it "return the number of words in that string" do
    expect(count_words("My name is Yichao")).to eq 4
  end

  it "return the number of words in that string" do
    expect(count_words("")).to eq 0
  end
end