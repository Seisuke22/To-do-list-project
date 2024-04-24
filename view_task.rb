# require_relative "task_repository"
# require_relative "model_task"
# require_relative "controller_task"

class ViewTask
  def get_task
    puts "What task do you want to add?"
    gets.chomp
  end

  def list_tasks(tasks)
    tasks.each_with_index do |task, index|
      x = task.done? ? "X" : ""
      puts "#{index + 1} - [#{x}] #{task.title}"
    end
  end

  def remove_task
    puts "Which index task to remove?"
    return gets.chomp.to_i - 1
  end

  def ask_for_index
    puts "Which index to mark?"
    gets.chomp.to_i - 1
  end
end
