class View
  def index(games)
    games.each do |game|
      puts "[#{game.played ? "X" : " "}] #{game.id}. #{game.name}"
    end
  end

  def ask_for(thing)
    puts "What's the #{thing} of the game?"
    gets.chomp
  end

  def show(game)
    puts "------------------"
    puts "NAME: #{game.name}"
    puts "GENRE: #{game.genre}"
    puts "ADDRESS: #{game.address}"
    puts "------------------"
  end
end