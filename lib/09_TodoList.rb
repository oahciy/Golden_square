class TodoList
  def initialize
    @todolist = []
  end

  def add(todo)
    @todolist << todo
  end

  def incomplete
    @todolist.select {|todo| !todo.done?}
  end

  def complete
    @todolist.select {|todo| todo.done?}
  end

  def give_up!
    @todolist.each(&:mark_done!)
  end
end