require "09_Todo"

RSpec.describe Todo do
  it "shows the taks" do
    todo = Todo.new("walk the demon dog")
    expect(todo.task).to eq "walk the demon dog"
  end

  it "marks done" do
    todo = Todo.new("walk the demon dog")
    todo.mark_done!
    expect(todo.done?).to eq true
  end
end