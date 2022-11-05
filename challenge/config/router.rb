class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts "-- My Games --"
    puts "What do you want to do"

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.index
    when 2 then @controller.show
    when 3 then @controller.create
    when 4 then @controller.destroy
    when 5 then @controller.mark_as_played
    when 6 then stop
    else
      puts "Please press 1, 2, 3, 4, 5 or 6"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all games"
    puts "2 - Show a game"
    puts "3 - Add a game"
    puts "4 - Delete a game"
    puts "5 - Mark a game as played"
    puts "6 - Exit"
  end
end
