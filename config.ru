require "sinatra"
require "sinatra/reloader" if development?
require "pg"
require_relative "./models/language.rb"
require_relative "./controllers/coding_controller.rb"


use Rack::MethodOverride

run CodingController
