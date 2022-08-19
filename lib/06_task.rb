class Task
  def initialize
    @to_do_list = []
  end

  def add(task) # task is a string
    @to_do_list << task
    return @to_do_list
  end

  def complete(task)
    @to_do_list.delete(task)
    return @to_do_list
  end
end