puts "Welcome! To Do list Project"

# Main Menu
puts "1. Add Task"
puts "2. View Task"
puts "3. Mark task as 'DONE'"
puts "4. Delete Task"
puts "5. Exit"

# View Task menu
#Example task (for now)
my_tasks = {
  1 => "Clean",
  2 => "Workout",
  3 =>"Study"
}

puts "Pick a number 1~5: "
action = gets.chomp

if action == "1"
  puts "What task do you want to add?: "
    new_task = gets.chomp
  puts "New Task '#{new_task}' has been Added"
elsif action == "2"
  puts "This is all your current tasks"
  puts my_tasks
else
  return "There is no action for that number"
end
