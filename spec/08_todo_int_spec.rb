require "08_todo"
require "08_todolist"

RSpec.describe "integration test for todolist" do
  it "returns all non-done todos" do
    todo1 = Todo.new("walk the dog")
    todo2 = Todo.new("Parking Permit")
    todolist = TodoList.new
    todolist.add(todo1)
    todolist.add(todo2)
    todo1.mark_done!
    expect(todolist.incomplete).to eq [todo2]
  end

  it "returns all complete todos" do
    todo1 = Todo.new("walk the dog")
    todo2 = Todo.new("Parking Permit")
    todolist = TodoList.new
    todolist.add(todo1)
    todolist.add(todo2)
    todo1.mark_done!
    expect(todolist.complete).to eq [todo1]
  end

  it "marks all todos as complete" do
    todo1 = Todo.new("walk the dog")
    todo2 = Todo.new("Parking Permit")
    todolist = TodoList.new
    todolist.add(todo1)
    todolist.add(todo2)
    todolist.give_up!
    expect(todolist.complete).to eq [todo1, todo2]
    expect(todolist.incomplete).to eq []
  end
end