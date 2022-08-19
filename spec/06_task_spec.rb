require "06_task"

RSpec.describe Task do
  it "add todo tasks and return a list" do
    to_do = Task.new
    list = to_do.add("walk the dog")
    expect(list).to eq ["walk the dog"]
  end

  it "remove the task from the list when completed" do
    to_do = Task.new
    to_do.add("walk the dog")
    to_do.add("buy groceries")
    to_do.add("finish homework")
    list = to_do.complete("finish homework")
    expect(list).to eq ["walk the dog", "buy groceries"]
  end
end