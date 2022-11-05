class AddPlayedToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :played, :boolean, default: false
  end
end