class ApiCarsController < Sinatra::Base

  get '/api/cars' do

    @cars = Car.all

    content_type :json

    carsArray = []

    @cars.each do |car|
      carHash = {
        "id" => car.id,
        "title" => car.title,
        "body" => car.body
      }
      carsArray.push(carHash)
    end

    carsArray.to_json

  end

  get '/api/cars/:id' do

    id = params[:id].to_i

    car = Car.apiFind(id)

    content_type :json

    car.to_json

  end

  post '/api/cars' do

    data = JSON.parse( request.body.read.to_s )

    new_car = {
      title: data['title'],
      body: data['body']
    }

    car = Car.api_create(new_car)

    content_type :json

    new_car.to_json

  end

  put 'api/cars/:id' do

    data = JSON.parse( request.body.read.to_s )

    updated_car = {
      id: params['id'],
      title: data['title'],
      body: data['body']
    }

    car = Car.api_update(updated_car)

    content_type :json

    updated_car.to_json
  end

  delete '/api/cars/:id' do

    id = params[:id].to_i

    Car.destroy(id);

    "Car id:#{id} was deleted"

  end



end
