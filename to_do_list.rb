puts "Welcome! To Do list Project"

# Main Menu
puts "1. Add Task"
puts "2. View current tasks"
puts "3. View Finished tasks"
puts "4. Mark task as 'DONE'"
puts "5. Rename task"
puts "6. Delete Task"
puts "7. Exit"

#tasks placeholder
my_tasks = []
complete_tasks = []

# Menu for actions from 1 to 5
loop do

  puts "Which action? 1-7"
  action = gets.chomp


  case action
  when "1"
    puts "What task to add?: "
    new_task = gets.chomp
    my_tasks << new_task
    puts "New '#{new_task}' task has been added "

  when "2"
    puts "This are all your current tasks"
    puts my_tasks.inspect

  when "3" #  unfunctional
    puts "Current Tasks"
    puts my_tasks.inspect

    puts "Which task to mark as done?"
      mark_task = gets.chomp
    puts "Task Successfully completed"

  when "7"
    puts "Quitting To do list app"
    break

  else
    puts "Please input between 1-5"
  end
end
