class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "What action to pick?"
      puts "1 - Add task | 2 - List task | 3 - Mark task| 4 - Quit"
      choice = gets.chomp.to_i

      case choice
      when 1
        @controller.add
      when 2
        @controller.list_task
      when 3
        @controller.mark_task
      when 4
        puts "Goodbye"
        break
      else
         puts "Invalid input"
      end
    end
  end
end
