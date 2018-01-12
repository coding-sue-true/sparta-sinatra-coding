require "sinatra"
require "sinatra/reloader" if development?
require "pg"
require "http"
require_relative "./models/language.rb"
require_relative "./controllers/coding_controller.rb"
require_relative "./models/cars.rb"
require_relative "./controllers/cars_controller.rb"

use Rack::Reloader
use Rack::MethodOverride


run Rack::Cascade.new ([
  CodingController,
  CarsController
  # ApiCarsController
])
# run CodingController
# run ApiCarsController
# run CarsController
