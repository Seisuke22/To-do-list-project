require_relative "model_task"
require_relative "task_repository"

class ControllerTask
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def list_task
    # Get all tasks in the repository
    tasks = @repository.all
    # Make all the tasks from the repo easier to read through view class and print
    @view.list_tasks(tasks)
  end

  def add
    # Ask and get the user input from View Class
    title = @view.get_task
    # Get the user input and add it into ModelTask
    task = ModelTask.new(title)
    #Get the user input from ModelTask and push it to the repo array
    @repository.create(task)
  end

  def mark_task
    # Ask and get user input from View Class
    index = @view.ask_for_index
    # Use the user input from view class to get the index from repo
    task = @repository.find(index)
    # Mark that task/index complete
    task.mark_complete
  end

  def remove
    tasks = repository.all
    index = @view.remove_task
    @tasks.destroy(index)
  end
end
