# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

Don't worry about user input & output here.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Task
  def initialize
    @to_do_list = []
  end

  def add(task) # task is a string
    @to_do_list << task
    return @to_do_list
  end

  def complete(task)
    @to_do_list.delete(task)
    return @to_do_list
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
to_do = Task.new
list = to_do.add("walk the dog")
expect(list).to eq ["walk the dog"]

# 2
to_do = Task.new
to_do.add("walk the dog")
to_do.add("buy groceries")
to_do.add("finish homework")
list = to_do.complete("finish homework")
expect(list).to eq ["walk the dog", "buy groceries"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
