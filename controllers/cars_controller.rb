class CarsController < Sinatra::Base

  #sets root as the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  get "/cars/" do
    @title = "Cars"

    @cars = Car.all

    erb :'cars/index'
  end

  get "/cars/new/" do
    @title = "Cars"

    @car = Car.new

    erb :'cars/new'
  end

  get "/cars/:id/edit" do
    @title = "Cars"

    id = params[:id].to_i

    @car = Car.find(id)

    erb :'cars/edit'
  end

  get "/cars/:id" do
    @title = "Cars"

    id = params[:id].to_i

    @car = Car.find(id)

    erb :'cars/show'
  end


  post "/cars/" do

    car = Car.new
    car.title = params[:title]
    car.body = params[:body]
    car.image = params[:image]

    car.save

    redirect "/cars/"
  end

  put "/cars/:id" do
    id = params[:id].to_i

    car = Car.find(id)

    car.id = params[:id]
    car.title = params[:title]
    car.body = params[:body]
    car.image = params[:image]

    car.save

    redirect "/cars/"
  end

  delete "/cars/:id" do
    id = params[:id].to_i

    Car.destroy(id)

    redirect "/cars/"
  end
end
