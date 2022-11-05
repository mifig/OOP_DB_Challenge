class View
  def display_all(games)
    games.each do |game|
      puts "[#{game.played ? "X" : " "}] #{game.id}. #{game.name}"
    end
  end

  def ask_for(something)
    puts "What's the #{something} of the game?"
    gets.chomp
  end

  def display(game)
    puts "-------------"
    puts "ID: #{game.id}"
    puts "NAME: #{game.name}"
    puts "GENRE: #{game.genre}"
    puts "LOCATION: #{game.address}"
    puts "-------------"
  end
end