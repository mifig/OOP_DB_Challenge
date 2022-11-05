require_relative "../views/view"

class GamesController
  def initialize
    @view = View.new
  end

  def index
    games = Game.all
    @view.display_all(games)
  end

  def show
    index
    id = @view.ask_for(:id)
    game = Game.find(id)
    @view.display(game)
  end

  def create
    name = @view.ask_for(:name)
    genre = @view.ask_for(:genre)
    address = @view.ask_for(:address)
    Game.create(name: name, genre: genre, address: address)
    index
  end

  def destroy
    index
    id = @view.ask_for(:id)
    game = Game.find(id)
    game.destroy
    index
  end

  def mark_as_played
    index
    id = @view.ask_for(:id)
    game = Game.find(id)
    game.update(played: true)
    index
  end
end