require "sinatra"
require "sinatra/reloader" if development?
require_relative "./controllers/coding_controller.rb"


run CodingController
