# Multi-Class Planned Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
1. As a user, I want to keep a regular diary, so that I can record my experiences.
2. As a user, I want to read my past diary entries, so that I can reflect on my experiences.
3. As a user, I want to select diary entries to read based on how much time(minutes) I have and my reading speed(wpm), so that I can reflect on my experiences in my busy day.
4. As a user, I want to keep a todo list along with my diary, so that I can keep track of my tasks.
5. As a user, I want to see a list of all of the mobile phone numbers in all my diary entries, so that I can keep track of my contacts.

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
    @diary = []
  end

  def add(entry) # entry is an instance of DisryEntry
    # entry gets added to the @diary
    # Returns nothing
    @diary << entry
  end

  def list
    # Returns a list of entries in @diary
    @diary
  end
  
  def reader(title)
    #select the entry by its title and return its contents
  end

  def select_readable_entries(wpm, minutes)
    #return a list of readable diary entries to read based on how much time(minutes) I have and my reading speed(wpm)
  end

  def contacts
    # return a list of extracted numbers from all entries
  end
end

class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def extract_phone_numbers
    #extract phone numbers from contents
  end 
end

class TodoList
  def initialize
    @todolist = []
  end

  def add(todo)
    @todolist << todo
  end

  def incomplete
  end

  def complete
  end

  def give_up!
  end
end

class Todo
  def initialize(task)
    @task = task
    @done = false
  end

  def task
    @task
  end

  def mark_done!
    @done = true
  end

  def done?
    @done
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
#Diary & DiaryEntry
# test 1 list
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "I want a dog")
entry_2 = DiaryEntry.new("title_2", "I want a cat")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.list).to eq [entry_1, entry_2]

# test 2 reader(title)
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "I want a dog")
entry_2 = DiaryEntry.new("title_2", "I want a cat")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.reader("title_1")).to eq "I want a dog"

# test 3 select_readable_entries
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "I want a dog")
entry_2 = DiaryEntry.new("title_2", "I want a small cat")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.select_readable_entries(2, 2)).to eq [entry_1]

#test 4 contacts
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "my number is 07422586652")
entry_2 = DiaryEntry.new("title_2", "I want a small cat")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.contacts).to eq ["07422586652"]

#TodoList & Todo
#test 1 incomplete
todolist = TodoList.new
todo_1 = Todo("walk the dog")
todo_2 = Todo("buy groceries")
todolist.add(todo_1)
todolist.add(todo_2)
expect(todolist.incomplete).to eq [todo_1, todo_2]
#test 2 complete
todolist = TodoList.new
todo_1 = Todo("walk the dog")
todo_2 = Todo("buy groceries")
todolist.add(todo_1)
todolist.add(todo_2)
todo_1.mark_done!
expect(todolist.complete).to eq [todo_1]
#test 3 give_up!
todolist = TodoList.new
todo_1 = Todo("walk the dog")
todo_2 = Todo("buy groceries")
todolist.add(todo_1)
todolist.add(todo_2)
todolist.give_up!
expect(todolist.complete).to eq [todo_1, todo_2]
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
#Diary
#test 1
diary = Diary.new
expect(diary.list).to eq []

#DiaryEntry
#test 1
entry = DiaryEntry.new("title_1", "my number is 07422586652")
expect(entry.extract_numbers).to eq ["07422586652"]

#TodoList
#test 1
todolist = TodoList.new
expect(todolist.complete).to eq []
expect(todolist.incomplete).to eq []

#Todo
#test 1
todo = Todo.new("walk the dog")
expect(todo.task).to eq "walk the dog"

#test 2
todo = Todo.new("walk the dog")
expect(todo.done?).to eq false

#test 3
todo = Todo.new("walk the dog")
todo.mark_done!
expect(todo.done?).to eq true
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._