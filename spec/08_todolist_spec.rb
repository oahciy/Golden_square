require "08_todolist"

RSpec.describe TodoList do
  it "returns empty array" do
    todolist = TodoList.new
    expect(todolist.incomplete).to eq []
    expect(todolist.complete).to eq []
  end
end