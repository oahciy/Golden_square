require "08_todo"

RSpec.describe Todo do
  it "initialize with a task" do
    todo = Todo.new("walk the dog")
    expect(todo.taks).to eq "walk the dog"
  end
end