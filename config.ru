require './config/environment'

use Rack::MethodOverride
run ApplicationController
use UsersController
use CharactersController
use CharacterCommentsController