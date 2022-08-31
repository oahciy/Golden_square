require "09_TodoList"

RSpec.describe TodoList do
  it "rerurns the completed tasks" do
    todolist = TodoList.new
    expect(todolist.complete).to eq []
    expect(todolist.incomplete).to eq []
  end
end