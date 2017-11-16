class CodingController < Sinatra::Base

  #sets root as the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $code = [{
	 id: 0,
	 title: "HTML",
	 body: "<h1> This is a Header </h1>"
  },
  {
    id: 1,
    title: "CSS",
    body: "This is how you change your background color: background-color: black;"
  },
  {
    id: 2,
    title: "JavaScript",
    body: "This language doesn't matter"
  }];

  get "/" do
    @title = "Coding_True"
    @coding = $code

    erb :'coding/home'
  end

  get "/coding" do
    @title = "Coding_True"
    @coding = $code
    erb :'coding/index'
  end

  get "/coding/new" do
    @title = "Coding_True"
    erb :'coding/new'
  end

  get "/coding/:id" do
    id = params[:id].to_i
    @coding = $code
    @title = "Coding_True"
    erb :'coding/show'
  end

  get "/coding/:id/edit" do
    @title = "Coding_True"
    id = params[:id]
    erb :'coding/edit'
  end

  post "/coding/" do
    "New programming language"
  end

  put "/coding/:id" do
    id = params[:id]

    "Update: #{id}"
  end

  delete "/coding/:id" do
    id = params[:id]

    "Delete: #{id}"
  end
end
