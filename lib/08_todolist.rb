class TodoList
  def initialize
    @todolist = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todolist << todo
  end

  def incomplete
    # Returns all non-done todos
    @todolist.select { |todo| todo.done? == false}
  end

  def complete
    # Returns all complete todos
    @todolist.select { |todo| todo.done? == true}
  end

  def give_up!
    # Marks all todos as complete
  end
end