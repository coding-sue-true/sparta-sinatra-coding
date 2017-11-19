class CodingController < Sinatra::Base

  #sets root as the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    @title = "Coding_True"

    @languages = Language.all

    erb :'coding/index'
  end

  get "/new" do
    @title = "Coding_True"

    @language = Language.new

    erb :'coding/new'
  end

  get "/:id/edit" do
    @title = "Coding_True"

    id = params[:id].to_i

    @language = Language.find(id)

    erb :'coding/edit'
  end

  get "/:id" do
    @title = "Coding_True"

    id = params[:id].to_i

    @language = Language.find(id)

    erb :'coding/show'
  end


  post "/" do

    language = Language.new
    language.title = params[:title]
    language.body = params[:body]

    language.save

    redirect "/"
  end

  put "/:id" do
    id = params[:id].to_i

    language = Language.find(id)

    language.id = params[:id]
    language.title = params[:title]
    language.body = params[:body]

    language.save

    redirect "/"
  end

  delete "/:id" do
    id = params[:id].to_i

    Language.destroy(id)
    puts 'deleted'
    redirect "/"
  end
end
