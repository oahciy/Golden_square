require "08_todo"

RSpec.describe Todo do
  it "initialize with a task" do
    todo = Todo.new("walk the dog")
    expect(todo.task).to eq "walk the dog"
  end

  context "only one todo" do
    it "marks done and returns true" do
      todo = Todo.new("walk the dog")
      todo.mark_done!
      expect(todo.done?).to eq true
    end

    it "returns false" do
      todo = Todo.new("walk the dog")
      expect(todo.done?).to eq false
    end
  end

  context "multiple todos" do
    it "returns status" do
      todo1 = Todo.new("walk the dog")
      todo2 = Todo.new("Parking Permit")
      todo1.mark_done!
      expect(todo1.done?).to eq true
      expect(todo2.done?).to eq false 
    end
  end
end