require "06_music"

RSpec.describe Music do
  it "adds track to the list" do
    music = Music.new
    music.add("College Dropout")
    expect(music.list).to eq ["College Dropout"]
  end
  
  it "adds more tracks to the list" do
    music = Music.new
    music.add("College Dropout")
    music.add("Back to December")
    expect(music.list).to eq ["College Dropout", "Back to December"]
  end

  it "fails if the track has already been added" do
    music = Music.new
    music.add("College Dropout")
    expect { music.add("College Dropout") }.to raise_error "you already added this one"
  end

  it "fails if the list is empty" do
    music = Music.new
    expect { music.list }.to raise_error "you do not have a list"
  end
end