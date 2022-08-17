require "grammar"

RSpec.describe "grammar method" do
  it "check capital letter and punctuation mark" do
    expect(grammar("Hello, my name is Yichao.")).to eq "Nice grammar!"
  end

  it "check capital letter and punctuation mark" do
    expect(grammar("hello, my name is Yichao.")).to eq "You need to start with a capital letter."
  end

  it "check capital letter and punctuation mark" do
    expect(grammar("Hello, my name is Yichao")).to eq "You need to end with a punctuation mark."
  end

  it "check capital letter and punctuation mark" do
    expect(grammar("hello, my name is Yichao")).to eq "You need to improve your grammar."
  end

  it "check if the text is expty" do
    expect { grammar("") }.to raise_error "No text given"
  end
end