require_relative "../views/view"
require_relative "../models/game"

class GamesController
  def initialize
    @view = View.new
  end

  def index
    games = Game.all
    @view.index(games)
  end

  def show
    index
    id = @view.ask_for(:id)
    game = Game.find(id)
    @view.show(game)
  end

  def create
    name = @view.ask_for(:name)
    genre = @view.ask_for(:genre)
    address = @view.ask_for(:address)
    game = Game.create(name: name, genre: genre, address: address)
    @view.show(game)
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
    game.played = true
    game.save
    index
  end
end