require_relative "model_task"

class TaskRepository
  attr_accessor :task

  def initialize
    @task = []
  end

  def create(new_task)
    @task << new_task
  end

  def all
    @task
  end

  def find(index)
    @task[index]
  end

  def destroy(index)
    @task.delete_at(index)
  end
end
