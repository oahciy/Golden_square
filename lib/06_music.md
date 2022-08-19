# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface
```ruby
class Music
  def initialize
    @list = []
  end

  def add(track) # track is a string
    fail "you already added this one" if @list.include?(track)
    @list << track
  end

  def list
    fail "you do not have a list" if @list.empty?
    @list
  end
end
```

## 3. Create Examples as Tests
```ruby
# test_1
music = Music.new
music.add("College Dropout")
expect(music.list).to eq ["College Dropout"]

#test_2
music = Music.new
music.add("College Dropout")
music.add("Back to December")
expect(music.list).to eq ["College Dropout", "Back to December"]

#test_3
music = Music.new
music.add("College Dropout")
music.add("College Dropout") # => fail

#test_4
music = Music.new
music.list # => fail
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._