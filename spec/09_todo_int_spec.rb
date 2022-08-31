require "09_TodoList"
require "09_Todo"

RSpec.describe "int test" do
  it "return a list of completed tasks" do
    todolist = TodoList.new
    todo_1 = Todo.new("walk the dog")
    todo_2 = Todo.new("buy groceries")
    todolist.add(todo_1)
    todolist.add(todo_2)
    todo_1.mark_done!
    expect(todolist.complete).to eq [todo_1]
  end

  it "return a list of incompleted tasks" do
    todolist = TodoList.new
    todo_1 = Todo.new("walk the dog")
    todo_2 = Todo.new("buy groceries")
    todolist.add(todo_1)
    todolist.add(todo_2)
    expect(todolist.incomplete).to eq [todo_1, todo_2]
  end

  it "marks all tasks as completed" do
    todolist = TodoList.new
    todo_1 = Todo.new("walk the dog")
    todo_2 = Todo.new("buy groceries")
    todolist.add(todo_1)
    todolist.add(todo_2)
    todolist.give_up!
    expect(todolist.complete).to eq [todo_1, todo_2]
  end
end