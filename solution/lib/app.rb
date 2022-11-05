require_relative '../config/application'
require_relative '../app/controllers/games_controller'
require_relative '../config/router'

games_controller = GamesController.new

router = Router.new(games_controller)

# Start the app
router.run
